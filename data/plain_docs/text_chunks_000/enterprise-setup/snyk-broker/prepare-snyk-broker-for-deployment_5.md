Snyk recommends rotating all API tokens and credentials used with Snyk Broker every 90 days.
For the first deployment of Broker, collaborating with your Snyk account team is required.

After generating the credentials for the Broker's target application, configure the environment variables for launching Snyk Broker.
The Broker token is required and must be generated in order for you to use Snyk Broker.
For code repository (SCM) integrations, a Broker token can be generated using the API or by contacting Snyk support.

Follow the example under "Set up a broker for an existing integration" in the endpoint Update existing integration or contact Snyk support.
Verify the Broker token is generated in the Snyk Web UI under the specified SCM integration. by selecting Settings > Integrations for that specific integration to see the Broker token.

For Artifactory Repository and Nexus Repository Manager brokered instances or Jira integration, you can generate a Broker token in the Snyk UI or contact Snyk support.

Select Settings > Integrations for that specific integration to generate the Broker token.
After the Broker token is generated, under the integration, the notification from this screen correctly displays Could not connect to…, as you have not yet installed and configured the client.
Copy and paste the Broker token from the UI to use it when you install the client.
