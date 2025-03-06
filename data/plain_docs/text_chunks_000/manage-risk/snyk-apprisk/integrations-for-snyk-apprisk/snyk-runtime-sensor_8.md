When running your Kubernetes cluster in OpenShift, you will have to apply the privileged Security Context Constraint to the service account of the Snyk Runtime Sensor by running the following command:
oc adm policy add-scc-to-user privileged \
system:serviceaccount:<<YOUR_NAMESPACE>>:runtime-sensor
Run this command after the sensor is installed as the service account will not be available until the installation is complete.
