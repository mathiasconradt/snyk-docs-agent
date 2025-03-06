Run the following command on your workspace to enable the Snyk Runtime Sensor add-on for your Amazon EKS cluster. You have to set the following environment variables to match your Snyk account and your targeted EKS cluster:

$CLUSTER_NAME
$AWS_REGION
$SNYK_GROUP_ID 
$SNYK_API_BASE_URL (should be set to api.snyk.io:443 unless your account is hosted on a different region than US).

aws eks create-addon \
--cluster-name $CLUSTER_NAME \
--region $AWS_REGION \
--addon-name snyk_runtime-sensor \
--configuration-values '' \
--resolve-conflicts OVERWRITE
After you have added the Snyk service account token as described below, ensure installation has been completed successfully by running the following command:
aws eks describe-addon --addon-name snyk_runtime-sensor --cluster-name $CLUSTER_NAME --region $AWS_REGION
Ensure the response you get is similar to this one and that the status is ACTIVE - it could take a few minutes until it reaches this status.
{
    "addon": {
        "addonName": "snyk_runtime-sensor",
        "clusterName": "<<YOUR_CLUSTER>>",
        "status": "ACTIVE",
        "addonVersion": "v1.17.2-eksbuild.1",
        "health": {
            "issues": []
        },
        "addonArn": "arn:aws:eks:us-east-1:XXXX:addon/<<YOUR_CLUSTER>>/snyk-runtimesensor/ffffffff-ffff-ffff-ffff-ffffffffffff",
        "createdAt": "2024-05-26T16:43:15.551000+03:00",
        "modifiedAt": "2024-05-26T16:43:28.714000+03:00",
        "tags": {},
        "configurationValues": ""
    }
}
