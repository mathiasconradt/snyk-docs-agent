* The Snyk runtime sensor is installed as a Kubernetes DaemonSet, meaning that there is a single Pod of the sensor for each Node available in the cluster.
* The Snyk runtime sensor does not utilize any persistent storage, and its disk usage is minimal.
* When installed as a Kubernetes DaemonSet, the eBPF capabilities are activated, allowing the Snyk runtime sensor to report both the risk factors of Deployed and Loaded package.

You can use as guidance the Helm chart from the helm/runtime-sensor repository, which is hosted through GitHub pages in https://snyk.github.io/runtime-sensor.
To install the Snyk runtime sensor as a Kubernetes DaemonSet using Helm Charts, you can follow these steps:

Ensure Helm is installed.

Create the snyk-runtime-sensor namespace:
kubectl create namespace snyk-runtime-sensor

3.  Create a secret with your service account token, which has the appropriate permissions (as instructed in the prerequisites section) under the created namespace:

kubectl create secret generic <<YOUR_SECRET_NAME>> --from-literal=snykToken=<<YOUR_TOKEN>> -n snyk-runtime-sensor

4.  Add the Helm repository:
helm repo add runtime-sensor https://snyk.github.io/runtime-sensor
5. If your data is hosted in a different region than the default region (USA), you need to set the snykAPIBaseURL while installing the Helm chart in the following format:\
   api.<<REGION>>.snyk.io:443, for example api.eu.snyk.io:443 
6.  (Optional) You can apply filters for the pods monitored by the sensor by adding specific workload types, namespaces, and pod labels to the allow list. The sensor will then monitor only the pods that meet all the provided filters. By default, all pods are monitored.
...
--set 'sensor.filters.workloadTypes='
--set 'sensor.filters.namespaces='
--set sensor.filters.podLabels.label_key1='label_value1'
--set sensor.filters.podLabels.label_key2='label_value2'
...
Available workload types:
json
deployment
daemonset
statefulset
replicaset
job
cronjob
7.  (Optional) If you want to configure custom resources (CPU/memory) for the runtime sensor image, the following values must be set (default values are used here):
...
--set sensor.resources.requests.memory=512Mi
--set sensor.resources.requests.cpu=100m
--set sensor.resources.limits.memory=1024Mi
--set sensor.resources.limits.cpu=500m
...
8.  Install the Helm chart:
helm install my-runtime-sensor \
--set workloadType=daemonset \ # Can be ommited, as 'daemonset' is the default
--set secretName=<<YOUR_SECRET_NAME>> \
--set clusterName=<<CLUSTER_NAME>> \
--set snykGroupId=<<YOUR_GROUP_ID>> \
--set snykAPIBaseURL=api.<<REGION>>.snyk.io:443 \ # Optional
-n snyk-runtime-sensor \
runtime-sensor/runtime-sensor
