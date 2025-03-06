Follow these steps to configure the Universal Broker using the snyk-broker-config command.

To use this command, you must install Node 18 or higher.


Run npm i -g snyk-broker-config.
Set the necessary environment variables:
SNYK_TOKEN if not already set. This must be your personal API key.
SNYK_API_HOSTNAME if you are not targeting https://api.snyk.io, for example,export SNYK_API_HOSTNAME=https://api.eu.snyk.io. See Broker URLs.
(optional) INSTALL_ID if you have one; otherwise, the tool will walk you through the installation process
Run snyk-broker-config commands to list the available commands.
Run snyk-broker-config workflows to list the available interactive workflows.
Create a deployment.
Run snyk-broker-config workflows deployments create.
Add any metadata key-value pair or pairs that are needed.
This workflow will walk you through a Snyk App installation if the App is not already installed. Ensure that you note the credentials (client ID+client Secret) and the installation ID (also export it as an environment variable) for use in the succeeding steps. If you lose the credentials, you must install the App again and recreate or update the deployment.
Optional:  When the workflow deployment has been created, view your deployment using snyk-broker-config workflows deployments get.
Create and configure your connection or connections.
Run snyk-broker-config workflows connections create to create a connection.
In response to the prompt Which Deployment do you want to use?: select your deployment from the list presented.
In response to the prompt Which Connection type do you want to create?:
Select the type of connection you want to create from the list presented.\
   Options include SCM connection types like github and variants, bitbucket and variants, gitlab, and azure, as well as container registry connections (see the next step), package manager connections, Jira, and more.
For container registry-type Broker connections, specify a CR_AGENT_URL to point to a Container Registry Agent.\
   You must configure and run both the Universal Broker and a separate Container Registry Agent. Follow the instructions for configuring and running a Container Registry Agent.


Provide the configuration for each required field in response to the prompts:
Enter a human-friendly name for your connection. Note that no spaces are allowed.
Enter the broker_client-url (the hostname and port of your Broker client, for example, https://my.broker.company.com:8000).
Enter the credential reference or choose the option CreateNew in response to a prompt like github-token (Sensitive): Which Credential Reference do you want to use? Or create New?


When you see the messages Connection created and Ready to configure integrations to use this connection, you can run the Broker client.
After the connection is created, use snyk-broker-config workflows connections integrate to configure an integration to use the newly created connection.\
   In response to the prompts, enter the deployment you want to use, the connection you want to use, the OrgID of the Organization you want to integrate, and the integration ID of the type github.\
   You can find your integration ID in your Organization Integrations settings or retrieve it using the Integrations API.

You may see that some integrations do not show an integration ID in the Snyk Web UI.

For JIRA, Artifactory, and Nexus, no integration ID is needed.
For the AppRisk connection type (not through SCM), the integration step is not needed during the beta process as configuration is done differently. See the AppRisk documentation to find where to copy the connection identifier listed in the connection.
For all other connection types, the integration ID may not be visible in the Snyk UI at first. You may need to go through a configuration wizard, entering dummy values, to get to the screen where the Integration ID is visible.
