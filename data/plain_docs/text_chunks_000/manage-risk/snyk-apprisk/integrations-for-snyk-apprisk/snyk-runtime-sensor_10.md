After you have successfully set up a subscription to Snyk Runtime Sensor on AWS Marketplace and followed the on-screen instructions, you will be redirected to Amazon EKS console.
To enable the Snyk Runtime Sensor for your Amazon EKS cluster, select your cluster on the Amazon EKS console. Then, navigate to the Add-ons tab and choose "Get more add-ons". Use the search bar to find "runtime" and follow the on-screen instructions to enable the add-on for your cluster. This process should be done for each cluster you want to integrate the sensor with (i.e. for each cluster you want to collect data from).
Select the Snyk Runtime Sensor add-on
On the next screen, select the latest version (even if already selected) and open the "Optional configuration settings".
Select the latest available version and open the 'Optional configuration settings'
Under the "configuration values", set the following attributes in a YAML or JSON format:

secretName - the secret name that will be created later in the process. The default value is  snyk-secret .
clusterName - the name of the cluster where the add-on is installed.
snykGroupId - the Group ID associated with the used service account.
snykAPIBaseURL - should be configured to be api.snyk.io:443 , unless your data is hosted in a different region than the default (US).

Here is a base configuration to copy:
secretName: snyk-secret
clusterName: <<MY_CLUSTER>>
snykGroupId: <<MY_SNYK_GROUP_ID>>
snykAPIBaseURL: api.snyk.io:443
Set the appropriate configuration values under "Optional configuraiton settings"
After you select the Next and Create options you will see the Add-on snyk-runtimesensor successfully added to cluster <<YOUR_CLUSTER>> notification on top of the page.
The success message.
