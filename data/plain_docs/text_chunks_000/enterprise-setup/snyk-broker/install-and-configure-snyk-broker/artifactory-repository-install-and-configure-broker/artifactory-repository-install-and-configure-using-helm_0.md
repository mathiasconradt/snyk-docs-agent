Feature availability
Integration with Artifactory Repository is available only with Enterprise plans. For more information, see plans and pricing.

Before installing, review the prerequisites and the general instructions for installation using Helm.
For information about non-brokered integration with Artifactory Repository see Artifactory Repository setup. For information about brokered integration with Artifactory Container Registry see Snyk Broker -Container Registry Agent.
To use this chart, you must first add the Snyk Broker Helm Chart by adding the repo:
helm repo add snyk-broker https://snyk.github.io/snyk-broker-helm/ 
Then, run the following commands to install the Broker and customize the environment variables. For definitions of the environment variables see Artifactory Repository - environment variables for Snyk Broker.
For artifactoryUrl value do not include https://

Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

helm install snyk-broker-chart snyk-broker/snyk-broker \
             --set scmType=artifactory \
             --set brokerToken=<ENTER_BROKER_TOKEN> \
             --set artifactoryUrl=<ENTER_ARTIFACTORY_URL> \
             -n snyk-broker --create-namespace
You can pass any environment variable of your choice in the Helm command. For details, see Custom additional options for Broker Helm Chart. Follow the instructions for Advanced configuration for Helm Chart installation to make configuration changes as needed.
You can verify that the Broker is running by looking at the settings for your brokered integration in the Snyk Web UI to see a confirmation message that you are connected. You can start importing Projects once you are connected.
