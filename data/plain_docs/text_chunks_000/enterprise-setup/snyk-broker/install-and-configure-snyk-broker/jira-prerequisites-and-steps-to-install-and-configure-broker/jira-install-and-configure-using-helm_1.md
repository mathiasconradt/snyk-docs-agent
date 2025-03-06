To use this chart, you must first add the Snyk Broker Helm Chart by adding the repo:
helm repo add snyk-broker https://snyk.github.io/snyk-broker-helm/ 
Then, run the following commands to install the Broker and customize the environment variables. For definitions of the environment variables, see Jira - environment variables for Snyk Broker.
for jiraHostname value do not include https://
helm install snyk-broker-chart snyk-broker/snyk-broker \
             --set scmType=jira \
             --set brokerToken=<ENTER_BROKER_TOKEN> \
             --set jiraUsername=<ENTER_JIRA_USERNAME> \
             --set jiraPassword=<ENTER_JIRA_PASSWORD>  \
             --set jiraHostname=<ENTER_JIRA_HOSTNAME>  \
             --set brokerClientUrl=<ENTER_BROKER_CLIENT_URL>:<ENTER_BROKER_CLIENT_PORT> \
             -n snyk-broker --create-namespace
You can pass any environment variable of your choice in the Helm command. For details, see Custom additional options for Broker Helm Chart. Follow the instructions for Advanced configuration for Helm Chart installation to make configuration changes as needed.
You can verify that the Broker is running by looking at the settings for your brokered integration in the Snyk Web UI to see a confirmation message that you are connected. You can start importing Projects once you are connected.
