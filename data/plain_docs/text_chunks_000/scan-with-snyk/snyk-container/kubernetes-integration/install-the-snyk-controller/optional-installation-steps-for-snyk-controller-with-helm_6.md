You can configure the Snyk Controller to use a PersistentVolumeClaim (PVC) instead of the default emptyDir storage medium to temporarily pull images.
To create the PVC, you can use the Helm template provided by the Snyk chart or an already provisioned PVC.
To control the PVC, use the following flags:

pvc.enabled - instructs the Helm Chart to use a PVC instead of an emptyDir.
pvc.create - creates the PVC. This is useful when provisioning for the first time.
pvc.storageClassName - controls the StorageClass of the PVC.
pvc.name - the name of the PVC to use with Kubernetes.

For example, you can run the following command on installation to provision and create the PVC:
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set pvc.enabled=true \
             --set pvc.create=true \
             --set pvc.name="snyk-monitor-pvc"
On subsequent upgrades, you can remove the pvc.create flag because the PVC already exists:
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \             
             --namespace snyk-monitor \
             --set pvc.enabled=true \
             --set pvc.name="snyk-monitor-pvc"
