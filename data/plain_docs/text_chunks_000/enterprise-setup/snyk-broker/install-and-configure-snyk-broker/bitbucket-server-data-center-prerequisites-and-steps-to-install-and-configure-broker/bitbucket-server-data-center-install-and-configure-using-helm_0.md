Before installing, review the prerequisites and the general instructions for installation using Helm.
To use this chart, you must first add the Snyk Broker Helm Chart by adding the repo:
helm repo add snyk-broker https://snyk.github.io/snyk-broker-helm/ 
Then, run the following commands to install the Broker and customize the environment variables. For definitions of the environment variables, refer to Bitbucket Server/Data Center - environment variables for Snyk Broker Basic Auth and Bitbucket Server/Data Center - environment variables for Snyk Broker Personal Access Token (PAT).
 For bitbucket and bitbucketApi values do not include https://
Snyk Essentials is set by default to false. Enable it by setting the flag to true.

Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

Use the following command to configure Broker to be used with Bitbucket Server using Basic Auth:
helm install snyk-broker-chart snyk-broker/snyk-broker \
             --set scmType=bitbucket-server \
             --set brokerToken=<ENTER_BROKER_TOKEN> \
             --set bitbucketUsername=<ENTER_USERNAME> \
             --set bitbucketPassword=<ENTER_PASSWORD> \
             --set bitbucket=<ENTER_BITBUCKET_URL> \
             --set bitbucketApi=<ENTER_BITBUCKET_API_URL> \
             --set brokerClientUrl=<ENTER_BROKER_CLIENT_URL>:<ENTER_BROKER_CLIENT_PORT> \
             --set enableEssentials=true \
             -n snyk-broker --create-namespace
Use the following command to configure Broker to be used with Bitbucket Server using Bearer Auth (Personal Access Token):
helm install snyk-broker-chart snyk-broker/snyk-broker \
             --set scmType=bitbucket-server-bearer-auth \
             --set brokerToken=<ENTER_BROKER_TOKEN> \
             --set bitbucketPat=<ENTER_PAT> \
             --set bitbucket=<ENTER_BITBUCKET_URL> \
             --set bitbucketApi=<ENTER_BITBUCKET_API_URL> \
             --set brokerClientUrl=<ENTER_BROKER_CLIENT_URL>:<ENTER_BROKER_CLIENT_PORT> \
             --set enableEssentials=true \
             -n snyk-broker --create-namespace
You can pass any environment variable of your choice in the Helm command. For details, see Custom additional options for Broker Helm Chart. Follow the instructions for Advanced configuration for Helm Chart installation to make configuration changes as needed.
You can verify that the Broker is running by looking at the settings for your brokered integration in the Snyk Web UI to see a confirmation message that you are connected. You can start importing Projects once you are connected.
