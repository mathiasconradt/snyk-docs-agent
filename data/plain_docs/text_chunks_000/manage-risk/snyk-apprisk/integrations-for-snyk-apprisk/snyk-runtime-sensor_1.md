Ensure that your environment meets the following technical prerequisites to properly use the Snyk Runtime Sensor:

Kubernetes supported version - Use Kubernetes v.1.19 or higher.


Managed Kubernetes services such as EKS Fargate or GKE Autopilot, are not supported, as the cluster nodes are managed by the cloud provider.


CPU architecture - AMD64 or ARM64.
Linux kernel - version 5.8 or higher.
Privileged access - you need either root or the following Linux capabilities: BPF, PERFMON, SYS_RESOURCES, DAC_READ_SEARCH, SYS_PTRACE, NET_ADMIN
Cluster nodes must support BTF.
Language support - Go, Java v8 or higher, .NET v2.0.9 or higher, Node.js v10 or higher, Python 3.6 or higher.
Network policy - if your cluster does not allow all outgoing traffic, set up the policy to enable outgoing traffic on port 443 for the following hosts:
api.snyk.io or api.<<REGION>>.snyk.io if hosted in a different region.
api.sentry.io
kubernetes.default.svc.cluster.local


If you encounter network restrictions, ensure that port 443 is enabled and that the policy is stateful.

You also need a token for a service account. The service account must have one of the following roles:

Group Admin
Custom Group Level Role with AppRisk edit permission enabled.
