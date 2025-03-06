Before installing, review the prerequisites and the general instructions for installation using Helm.
To use this chart, you must first add the Snyk Broker Helm Chart by adding the repo:
helm repo add snyk-broker https://snyk.github.io/snyk-broker-helm/ 
Then, run the following commands to install the Broker and customize the environment variables. Refer to GitHub - environment variables for Snyk Broker for definitions of the environment variables.
Snyk Essentials is set by default to false. Enable it by setting the flag to true.

Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

helm install snyk-broker-chart snyk-broker/snyk-broker \
             --set scmType=github-com \
             --set brokerToken=<ENTER_BROKER_TOKEN> \
             --set scmToken=<ENTER_REPO_TOKEN> \
             --set enableEssentials=true \
             --set brokerClientUrl=<ENTER_BROKER_CLIENT_URL>:<ENTER_BROKER_CLIENT_PORT> \
             -n snyk-broker --create-namespace
You can pass any environment variable of your choice in the Helm command. For details, see Custom additional options for Broker Helm Chart. Follow the instructions for Advanced configuration for Helm Chart installation to make configuration changes as needed.
You can verify that the Broker is running by looking at the settings for your brokered integration in the Snyk Web UI to see a confirmation message that you are connected. You can start importing Projects once you are connected.
