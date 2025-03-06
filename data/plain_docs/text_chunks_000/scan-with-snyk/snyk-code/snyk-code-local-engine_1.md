The core requirements to deploy the Snyk Code Local Engine are:

Kubernetes version 1.21.0 - 1.28.0:
Recommended: a dedicated Kubernetes cluster

Outbound HTTPS connections supporting WebSockets from the cluster to *.snyk.io
This connection is needed for all flows (CLI, IDE, SCM, and PR Checks)
  * Kubernetes – one of the following:
* Managed public cloud Kubernetes service - EKS, AKS, GKE\
  - or -
* Unmanaged Kubernetes (a self-hosted cluster)
  * PR Checks and Snyk CLI support require network access to the Kubernetes cluster:
* From your Kubernetes cluster to your Git and CI/CD tooling
* From users running Snyk CLI to the Kubernetes cluster
* Helm version 3.8.0 or newer
* Environment with x86 CPUs
