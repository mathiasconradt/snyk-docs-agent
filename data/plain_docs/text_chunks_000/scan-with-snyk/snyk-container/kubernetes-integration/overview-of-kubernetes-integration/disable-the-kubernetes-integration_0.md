To disable the Kubernetes integration:

Uninstall the Snyk Controller from your cluster.

You can use Helm to do so. With Helm, you must determine the release name. For example:
$ helm ls --short
snyk-monitor
You can then delete the release: $ helm delete snyk-monitor

On the Organization integration settings page, click Disconnect . This invalidates the credentials used to import and synchronize new workloads.

 If you are not using Helm, remove the snyk-monitor namespace.
