#!/bin/bash
#
# Functions used by MicroShift in Greenboot health check procedures.
# This library may also be used for user workload health check verification.
#
SCRIPT_PID=$$

OCCONFIG_OPT="--kubeconfig /var/lib/microshift/resources/kubeadmin/kubeconfig"
OCGET_OPT="--no-headers"
OCGET_CMD="oc get ${OCCONFIG_OPT}"

# Get the recommended wait timeout to be used for running health check operations.
# The returned timeout is a product of a base value and a boot attempt counter, so
# that the timeout increases after every boot attempt.
#
# The base value for the timeout and the maximum boot attempts can be defined in
# the /etc/greenboot/greenboot.conf file using the MICROSHIFT_WAIT_TIMEOUT_SEC
# and GREENBOOT_MAX_BOOTS settings.
#
# args: None
# return: Print the recommended timeout value to stdout
function get_wait_timeout() {
    # Source Greenboot configuration file if it exists
    local conf_file=/etc/greenboot/greenboot.conf
    [ -f "${conf_file}" ] && source ${conf_file}
    local base_timeout=${MICROSHIFT_WAIT_TIMEOUT_SEC:-300}

    # Update the wait timeout according to the boot counter.
    # The new wait timeout is a product of the timeout base and the number of boot attempts.
    local max_boots=${GREENBOOT_MAX_BOOTS:-3}
    local boot_counter=$(grub2-editenv - list | grep ^boot_counter= | awk -F= '{print $2}')
    [ -z "${boot_counter}" ] && boot_counter=$(( $max_boots - 1 ))

    local wait_timeout=$(( $base_timeout * ( $max_boots - $boot_counter ) ))
    [ ${wait_timeout} -le 0 ] && wait_timeout=${base_timeout}

    echo $wait_timeout
}

# Run a command with a second delay until it returns a zero exit status
#
# arg1: Time in seconds to wait for a command to succeed
# argN: Command to run with optional arguments
# return: 0 if a command ran successfully within the wait period, or 1 otherwise
function wait_for() {
    local timeout=$1
    shift 1

    local start=$(date +%s)
    until ("$@"); do
        sleep 1

        local now=$(date +%s)
        [ $(( now - start )) -ge $timeout ] && return 1
    done

    return 0
}

# Check if all the pod images in a given namespace are downloaded.
#
# args: None
# env1: 'CHECK_PODS_NS' environment variable for the namespace to check
# return: 0 if all the images in a given namespace are downloaded, or 1 otherwise
function namespace_images_downloaded() {
    local ns=${CHECK_PODS_NS}

    local images=$(${OCGET_CMD} pods ${OCGET_OPT} -n ${ns} -o jsonpath="{.items[*].spec.containers[*].image}" 2>/dev/null)
    for i in ${images} ; do
        # Return an error on the first missing image
        local cimage=$(crictl image -q ${i})
        [ -z "${cimage}" ] && return 1
    done

    return 0
}

# Check if a given number of pods in a given namespace are in the 'Ready' status,
# terminating the script with the SIGTERM signal if more pods are ready than expected.
#
# args: None
# env1: 'CHECK_PODS_NS' environment variable for the namespace to check
# env2: 'CHECK_PODS_CT' environment variable for the pod count to check
# return: 0 if the expected number of pods are ready, or 1 otherwise
function namespace_pods_ready() {
    local ns=${CHECK_PODS_NS}
    local ct=${CHECK_PODS_CT}

    local status=$(${OCGET_CMD} pods ${OCGET_OPT} -n ${ns} -o 'jsonpath={..status.conditions[?(@.type=="Ready")].status}' 2>/dev/null)
    local tcount=$(echo $status | grep -o True  | wc -l)
    local fcount=$(echo $status | grep -o False | wc -l)

    # Terminate the script in case more pods are ready than expected - nothing to wait for
    if [ "${tcount}" -gt "${ct}" ] ; then
        echo "The number of ready pods in the '${ns}' namespace is greater than the expected '${ct}' count. Terminating..."
        kill -TERM ${SCRIPT_PID}
    fi
    # Exit with error if any pods are not ready yet
    [ "${fcount}" -gt 0 ] && return 1
    # Check the ready pod count
    [ "${tcount}" -eq "${ct}" ] && return 0
    return 1
}

# Check if MicroShift pods in a given namespace started and verify they are not restarting by sampling
# the pod restart count 10 times every 5 seconds and comparing the current sample with the previous one.
# The pods are considered restarting if the number of 'pod-restarting' samples is greater than the
# number of 'pod-not-restarting' ones.
#
# arg1: Name of the namespace to check
# return: 0 if pods are not restarting, or 1 otherwise
function namespace_pods_not_restarting() {
    local ns=$1
    local restarts=0

    local count1=$(${OCGET_CMD} pods ${OCGET_OPT} -n ${ns} -o 'jsonpath={..status.containerStatuses[].restartCount}' 2>/dev/null)
    for i in $(seq 10) ; do
        sleep 5
        local countS=$(${OCGET_CMD} pods ${OCGET_OPT} -n ${ns} -o 'jsonpath={..status.containerStatuses[].started}' 2>/dev/null | grep -vc false)
        local count2=$(${OCGET_CMD} pods ${OCGET_OPT} -n ${ns} -o 'jsonpath={..status.containerStatuses[].restartCount}' 2>/dev/null)

        # If pods started, a restart is detected by comparing the count string between the checks.
        # The number of pod restarts is incremented when a restart is detected, or decremented otherwise.
        if [ "${countS}" -ne 0 ] && [ "${count1}" = "${count2}" ] ; then
            restarts=$(( restarts - 1 ))
        else
            restarts=$(( restarts + 1 ))
            count1=${count2}
        fi
    done

    [ "${restarts}" -lt 0 ] && return 0
    return 1
}
