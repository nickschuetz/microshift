module github.com/openshift/microshift/etcd

go 1.18

require github.com/openshift/microshift v0.0.0

replace (
	github.com/openshift/microshift => ../
	github.com/openshift/microshift/pkg/config => ../pkg/config
	github.com/openshift/microshift/pkg/util/cryptomaterial => ../pkg/util/cryptomaterial
)

require (
	github.com/openshift/build-machinery-go v0.0.0-20220913142420-e25cf57ea46d
	github.com/spf13/cobra v1.6.0
	go.etcd.io/etcd/server/v3 v3.5.5
	k8s.io/apimachinery v0.26.1
	k8s.io/cli-runtime v0.26.1
	k8s.io/component-base v0.26.1
	k8s.io/klog/v2 v2.80.1
	k8s.io/kubectl v0.26.1
	sigs.k8s.io/yaml v1.3.0
)

require (
	github.com/NYTimes/gziphandler v1.1.1 // indirect
	github.com/antlr/antlr4/runtime/Go/antlr v1.4.10 // indirect
	github.com/blang/semver/v4 v4.0.0 // indirect
	github.com/coreos/go-oidc v2.1.0+incompatible // indirect
	github.com/docker/distribution v2.8.1+incompatible // indirect
	github.com/felixge/httpsnoop v1.0.3 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/google/cel-go v0.12.6 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.7.0 // indirect
	github.com/moby/sys/mountinfo v0.6.2 // indirect
	github.com/mxk/go-flowrate v0.0.0-20140419014527-cca7078d478f // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/selinux v1.10.0 // indirect
	github.com/openshift/library-go v0.0.0-20230130232623-47904dd9ff5a // indirect
	github.com/pquerna/cachecontrol v0.1.0 // indirect
	github.com/robfig/cron/v3 v3.0.1 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/stoewer/go-strcase v1.2.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.35.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/internal/retry v1.10.0 // indirect
	go.opentelemetry.io/otel/metric v0.31.0 // indirect
	golang.org/x/sync v0.0.0-20220722155255-886fb9371eb4 // indirect
	golang.org/x/tools v0.2.0 // indirect
	gopkg.in/square/go-jose.v2 v2.2.2 // indirect
	k8s.io/apiserver v0.26.1 // indirect
	k8s.io/cloud-provider v0.0.0 // indirect
	k8s.io/cluster-bootstrap v0.0.0 // indirect
	k8s.io/component-helpers v0.26.1 // indirect
	k8s.io/kms v0.26.1 // indirect
	k8s.io/kubelet v0.0.0 // indirect
	k8s.io/kubernetes v1.26.1 // indirect
	k8s.io/mount-utils v0.0.0 // indirect
	k8s.io/pod-security-admission v0.25.0 // indirect
	sigs.k8s.io/apiserver-network-proxy/konnectivity-client v0.0.35 // indirect
)

require (
	github.com/Azure/go-ansiterm v0.0.0-20210617225240-d185dfc1b5a1 // indirect
	github.com/MakeNowJust/heredoc v1.0.0 // indirect
	github.com/apparentlymart/go-cidr v1.1.0 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cenkalti/backoff/v4 v4.1.3 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/chai2010/gettext-go v1.0.2 // indirect
	github.com/coreos/go-semver v0.3.0 // indirect
	github.com/coreos/go-systemd/v22 v22.3.2 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dustin/go-humanize v1.0.0 // indirect
	github.com/emicklei/go-restful/v3 v3.9.0 // indirect
	github.com/evanphx/json-patch v4.12.0+incompatible // indirect
	github.com/exponent-io/jsonpath v0.0.0-20151013193312-d6023ce2651d // indirect
	github.com/go-errors/errors v1.0.1 // indirect
	github.com/go-logr/logr v1.2.3 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/jsonreference v0.20.0 // indirect
	github.com/go-openapi/swag v0.19.14 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang-jwt/jwt/v4 v4.4.2 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/btree v1.0.1 // indirect
	github.com/google/gnostic v0.5.7-v3refs // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510 // indirect
	github.com/google/uuid v1.1.2 // indirect
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/gregjones/httpcache v0.0.0-20180305231024-9cad4c3443a7 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0 // indirect
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.16.0 // indirect
	github.com/imdario/mergo v0.3.11 // indirect
	github.com/inconshreveable/mousetrap v1.0.1 // indirect
	github.com/jonboulle/clockwork v0.2.2 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/liggitt/tabwriter v0.0.0-20181228230101-89fcab3d43de // indirect
	github.com/mailru/easyjson v0.7.6 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.2 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect; microshift
	github.com/mitchellh/go-wordwrap v1.0.0 // indirect
	github.com/moby/spdystream v0.2.0 // indirect
	github.com/moby/term v0.0.0-20220808134915-39b0c02b01ae // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/monochromegane/go-gitignore v0.0.0-20200626010858-205db1a8cc00 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/prometheus/client_golang v1.14.0 // indirect
	github.com/prometheus/client_model v0.3.0 // indirect
	github.com/prometheus/common v0.37.0 // indirect
	github.com/prometheus/procfs v0.8.0 // indirect
	github.com/sirupsen/logrus v1.8.1 // indirect
	github.com/soheilhy/cmux v0.1.5 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/tmc/grpc-websocket-proxy v0.0.0-20201229170055-e5319fda7802 // indirect
	github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2 // indirect
	github.com/xlab/treeprint v1.1.0 // indirect
	go.etcd.io/bbolt v1.3.6 // indirect
	go.etcd.io/etcd/api/v3 v3.5.6 // indirect
	go.etcd.io/etcd/client/pkg/v3 v3.5.6 // indirect
	go.etcd.io/etcd/client/v2 v2.305.6 // indirect
	go.etcd.io/etcd/client/v3 v3.5.6 // indirect
	go.etcd.io/etcd/pkg/v3 v3.5.6 // indirect
	go.etcd.io/etcd/raft/v3 v3.5.6 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.35.0 // indirect
	go.opentelemetry.io/otel v1.10.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.10.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.10.0 // indirect
	go.opentelemetry.io/otel/sdk v1.10.0 // indirect
	go.opentelemetry.io/otel/trace v1.10.0 // indirect
	go.opentelemetry.io/proto/otlp v0.19.0 // indirect
	go.starlark.net v0.0.0-20200306205701-8dd3e2ee1dd5 // indirect
	go.uber.org/atomic v1.7.0 // indirect
	go.uber.org/multierr v1.6.0 // indirect
	go.uber.org/zap v1.19.0 // indirect
	golang.org/x/crypto v0.1.0 // indirect
	golang.org/x/net v0.5.0 // indirect
	golang.org/x/oauth2 v0.0.0-20220411215720-9780585627b5 // indirect
	golang.org/x/sys v0.4.0 // indirect
	golang.org/x/term v0.4.0 // indirect
	golang.org/x/text v0.6.0 // indirect
	golang.org/x/time v0.0.0-20220210224613-90d013bbcef8 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20220502173005-c8bf987b8c21 // indirect
	google.golang.org/grpc v1.49.0 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.0.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/api v0.26.1 // indirect
	k8s.io/client-go v0.26.1 // indirect
	k8s.io/kube-openapi v0.0.0-20221012153701-172d655c2280 // indirect
	k8s.io/utils v0.0.0-20221107191617-1a15be271d1d // indirect
	sigs.k8s.io/json v0.0.0-20220713155537-f223a00ba0e2 // indirect
	sigs.k8s.io/kustomize/api v0.12.1 // indirect
	sigs.k8s.io/kustomize/kyaml v0.13.9 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.3 // indirect
)

replace (
	github.com/onsi/ginkgo/v2 => github.com/openshift/onsi-ginkgo/v2 v2.4.1-0.20221214150008-e73634cb3870 // from kubernetes
	go.etcd.io/etcd/api/v3 => github.com/openshift/etcd/api/v3 v3.5.1-0.20230125165349-13c18c444a8c // from etcd
	go.etcd.io/etcd/client/pkg/v3 => github.com/openshift/etcd/client/pkg/v3 v3.5.1-0.20230125165349-13c18c444a8c // from etcd
	go.etcd.io/etcd/client/v3 => github.com/openshift/etcd/client/v3 v3.5.1-0.20230125165349-13c18c444a8c // from etcd
	go.etcd.io/etcd/pkg/v3 => github.com/openshift/etcd/pkg/v3 v3.5.1-0.20230125165349-13c18c444a8c // from etcd
	go.etcd.io/etcd/raft/v3 => github.com/openshift/etcd/raft/v3 v3.5.1-0.20230125165349-13c18c444a8c // from etcd
	go.etcd.io/etcd/server/v3 => github.com/openshift/etcd/server/v3 v3.5.1-0.20230125165349-13c18c444a8c // from etcd
	k8s.io/api => github.com/openshift/kubernetes/staging/src/k8s.io/api v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/apiextensions-apiserver => github.com/openshift/kubernetes/staging/src/k8s.io/apiextensions-apiserver v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/apimachinery => github.com/openshift/kubernetes/staging/src/k8s.io/apimachinery v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/apiserver => github.com/openshift/kubernetes/staging/src/k8s.io/apiserver v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/cli-runtime => github.com/openshift/kubernetes/staging/src/k8s.io/cli-runtime v0.0.0-20230223163248-89232647de67 // from kubernetes
	k8s.io/client-go => github.com/openshift/kubernetes/staging/src/k8s.io/client-go v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/cloud-provider => github.com/openshift/kubernetes/staging/src/k8s.io/cloud-provider v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/cluster-bootstrap => github.com/openshift/kubernetes/staging/src/k8s.io/cluster-bootstrap v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/code-generator => github.com/openshift/kubernetes/staging/src/k8s.io/code-generator v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/component-base => github.com/openshift/kubernetes/staging/src/k8s.io/component-base v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/component-helpers => github.com/openshift/kubernetes/staging/src/k8s.io/component-helpers v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/controller-manager => github.com/openshift/kubernetes/staging/src/k8s.io/controller-manager v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/cri-api => github.com/openshift/kubernetes/staging/src/k8s.io/cri-api v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/csi-translation-lib => github.com/openshift/kubernetes/staging/src/k8s.io/csi-translation-lib v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/dynamic-resource-allocation => github.com/openshift/kubernetes/staging/src/k8s.io/dynamic-resource-allocation v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/kms => github.com/openshift/kubernetes/staging/src/k8s.io/kms v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/kube-aggregator => github.com/openshift/kubernetes/staging/src/k8s.io/kube-aggregator v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/kube-controller-manager => github.com/openshift/kubernetes/staging/src/k8s.io/kube-controller-manager v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/kube-proxy => github.com/openshift/kubernetes/staging/src/k8s.io/kube-proxy v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/kube-scheduler => github.com/openshift/kubernetes/staging/src/k8s.io/kube-scheduler v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/kubectl => github.com/openshift/kubernetes/staging/src/k8s.io/kubectl v0.0.0-20230223163248-89232647de67 // from kubernetes
	k8s.io/kubelet => github.com/openshift/kubernetes/staging/src/k8s.io/kubelet v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/legacy-cloud-providers => github.com/openshift/kubernetes/staging/src/k8s.io/legacy-cloud-providers v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/metrics => github.com/openshift/kubernetes/staging/src/k8s.io/metrics v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/mount-utils => github.com/openshift/kubernetes/staging/src/k8s.io/mount-utils v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/pod-security-admission => github.com/openshift/kubernetes/staging/src/k8s.io/pod-security-admission v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/sample-apiserver => github.com/openshift/kubernetes/staging/src/k8s.io/sample-apiserver v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/sample-cli-plugin => github.com/openshift/kubernetes/staging/src/k8s.io/sample-cli-plugin v0.0.0-20230223163248-89232647de67 // staging kubernetes
	k8s.io/sample-controller => github.com/openshift/kubernetes/staging/src/k8s.io/sample-controller v0.0.0-20230223163248-89232647de67 // staging kubernetes
)
