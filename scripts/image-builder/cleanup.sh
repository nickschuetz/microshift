#!/bin/bash
set -e -o pipefail

ROOTDIR=$(git rev-parse --show-toplevel)
BUILDDIR=${ROOTDIR}/_output/image-builder/

title() {
    echo -e "\E[34m\n# $1\E[00m";
}

# Parse command line
if [ $# -ge 1 ] ; then
    case "$1" in
    -full)
        FULL_CLEAN=1
        ;;
    *)
        echo "Usage: $(basename $0) [-full]"
        exit 0
        ;;
    esac
fi

if [ "$FULL_CLEAN" = 1 ] ; then
    title "Cleaning the build directory"
    rm -rf ${BUILDDIR}
fi

title "Cleaning up local ostree container server"
sudo podman rm -f microshift-container-server 2>/dev/null || true
if [ "$FULL_CLEAN" = 1 ] ; then
    SRV_PID=$(pidof microshift) || true
    if [ ! -z ${SRV_PID} ] ; then
        sudo kill ${SRV_PID} 2>/dev/null || true
        # Waiting for the server to exit
        while sudo kill -0 ${SRV_PID} 2>/dev/null; do sleep 5 ; done
    fi
    sudo podman rmi -af
fi

title "Cancelling composer jobs"
for uid in $(sudo composer-cli compose list | awk '{print $1}') ; do
    sudo composer-cli compose cancel $uid 2>/dev/null || true
done

if [ "$FULL_CLEAN" = 1 ] ; then
    title "Deleting composer jobs"
    for uid in $(sudo composer-cli compose list | awk '{print $1}') ; do
        sudo composer-cli compose delete $uid || true
    done
fi

title "Cleaning up composer sources"
sudo composer-cli sources delete openshift-local  2>/dev/null || true
sudo composer-cli sources delete microshift-local 2>/dev/null || true

if [ "$FULL_CLEAN" = 1 ] ; then
    title "Clean up user cache"
    rm -rf ~/.cache 2>/dev/null || true
    sudo rm -rf /tmp/containers/* 2>/dev/null || true
fi

title "Clean osbuild worker cache"
sudo systemctl stop --now osbuild-composer.socket osbuild-composer.service osbuild-worker@1.service
sleep 5
sudo rm -rf /var/cache/osbuild-worker/* /var/lib/osbuild-composer/*
sudo systemctl start osbuild-composer.socket
