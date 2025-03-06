There is a Helm chart within this repo in helm/runtime-sensor, that is hosted through GitHub pages in https://snyk.github.io/runtime-sensor.
To install the Snyk runtime sensor using Helm Charts and the AWS Secrets Manager, you can follow these steps:
Prerequisite: Install AWS Provider and CSI Secrets Store in your cluster, as instructed here.

Ensure Helm is installed.

Create the snyk-runtime-sensor namespace:
kubectl create namespace snyk-runtime-sensor

3.  Create the Snyk Runtime Sensor Secret containing your service account token under the snykToken key in your AWS account, and obtain the resulted ARN:
aws secretsmanager create-secret \
--name snyk-runtime-sensor-secret \
--secret-string ''
4.  Create an access policy for the newly created secret:
POLICY_ARN=$(aws --query Policy.Arn --output text iam create-policy --policy-name snyk-runtime-sensor-secret-policy --policy-document '{
    "Version": "2012-10-17",
    "Statement": [ {
        "Effect": "Allow",
        "Action": ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"],
        "Resource": ["<<YOUR_SECRET'S_ARN>>"]
    } ]
}')
5.  Create an IAM OIDC provider for your cluster if you haven't done so already (only run this once):
eksctl utils associate-iam-oidc-provider \
--cluster="<<CLUSTER_NAME>>" \
--approve
6.  Add the Helm repo:
helm repo add runtime-sensor https://snyk.github.io/runtime-sensor
7. If your data is hosted in a different region than the default region (USA), you need to set the snykAPIBaseURL while installing the Helm chart in the following format: api.<<REGION>>.snyk.io:443, for example api.eu.snyk.io:443
8.  (Optional) If you want to configure custom resources (CPU/memory) for the runtime sensor image, set the following values as well when running the next step (default values are used here):
...
--set sensor.resources.requests.memory=512Mi
--set sensor.resources.requests.cpu=100m
--set sensor.resources.limits.memory=1024Mi
--set sensor.resources.limits.cpu=500m
...
9.  Install the Helm chart:
helm install my-runtime-sensor \
--set secretProvider=aws \
--set secretName=snyk-runtime-sensor-secret \
--set clusterName=<<CLUSTER_NAME>> \
--set snykGroupId=<<YOUR_GROUP_ID>> \
--set snykAPIBaseURL=api.<<REGION>>.snyk.io:443 \ # Optional
-n snyk-runtime-sensor \
runtime-sensor/runtime-sensor
10. Attach the ARN of the policy created in step 4 to the newly created service account, by creating a new role:

eksctl create iamserviceaccount \
--name runtime-sensor \
--region=<<REGION>> \
--cluster "<<CLUSTER_NAME>>" \
--attach-policy-arn "$POLICY_ARN" \
--approve \
--override-existing-serviceaccounts \
--namespace=snyk-runtime-sensor

11. Verify that the secret was mounted successfully into the snyk-runtime-sensor namespace (kubectl get secrets -n snyk-runtime-sensor), and that the sensor pods are running successfully (kubectl get pods -n snyk-runtime-sensor).
