You can disable the Snyk Runtime Sensor add-on by running the following command:
aws eks delete-addon --addon-name snyk_runtime-sensor --cluster-name $CLUSTER_NAME --region $AWS_REGION
