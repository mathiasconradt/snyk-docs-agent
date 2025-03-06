Feature availability
Snyk Azure Repos are available only for Azure DevOps/TFS 2020 or above.

Before installing, review the prerequisites and the general instructions for installation using Helm.
To use this chart, you must first add the Snyk Broker Helm Chart by adding the repo:
helm repo add snyk-broker https://snyk.github.io/snyk-broker-helm/ 
Then, run the following commands to install the Broker and customize the environment variables. Refer to Azure Repos - environment variables for Snyk Broker for definitions of the environment variables.
For the variable azureReposHost the value does not include https://. If you have more than one Azure organization, you must deploy a Broker for each one.
Snyk Essentials is set by default to false. Enable it by setting the flag to true.

Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

helm install snyk-broker-chart snyk-broker/snyk-broker \
             --set scmType=azure-repos \
             --set brokerToken=<ENTER_BROKER_TOKEN> \
             --set azureReposToken=<ENTER_REPO_TOKEN> \
             --set azureReposOrg=<ENTER_REPO_ORG> \
             --set azureReposHost=<ENTER_REPO_HOST> \
             --set brokerClientUrl=<ENTER_BROKER_CLIENT_URL>:<ENTER_BROKER_CLIENT_PORT> \
             --set enableEssentials=true \
             -n snyk-broker --create-namespace
You can pass any environment variable of your choice in the Helm command. For details, see Custom additional options for Broker Helm Chart. Follow the instructions for Advanced configuration for Helm Chart installation to make configuration changes as needed.
You can verify that the Broker is running by looking at the settings for your brokered integration in the Snyk Web UI to see a confirmation message that you are connected. You can start importing Projects once you are connected.
