Supported workloads
The Snyk Controller can detect the following workloads in the cluster:

Deployment
ReplicaSet
ReplicationController
DaemonSet
StatefulSet
Job
CronJob
DeploymentConfig (OpenShift)
Pod, when these Pods have no parent or owner references.

The Controller detects these workloads by tracing the chain of owner references starting from individual Pods until it reaches the topmost workload.
For example, given a Pod, the Controller can detect that it is owned by a ReplicaSet, which in turn is owned by a Deployment, which in turn has no other owners. The workload detected is thus the Deployment.
In cases where a workload is owned by a Custom Resource, the snyk monitor currently cannot proceed and must assume that the current workload is the topmost parent that the Controller was able to process.
