If you use a PersistentVolumeClaim (PVC), instead of the default emptyDir storage, then you must provision volume permissions. To do this, disable the initContainers in the Helm Chart using the --set flag:
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set initContainers.enabled = false

For Openshift platform, the initContainers setting is mandatory.
