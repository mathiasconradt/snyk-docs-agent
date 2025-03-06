Set your kubectl context to control your cluster using aws eks: 

aws eks update-kubeconfig --name $CLUSTER_NAME --region $AWS_REGION

Create a secret name snyk-secret under the snyk-runtime-sensor namespace that contains the snykToken. The snykToken will be your service account token: 

kubectl create secret generic snyk-secret \
--from-literal=snykToken=$SNYK_TOKEN \
-n snyk-runtime-sensor

Data from your AWS EKS Cluster will be reported to Snyk using the Snyk Runtime Sensor.
