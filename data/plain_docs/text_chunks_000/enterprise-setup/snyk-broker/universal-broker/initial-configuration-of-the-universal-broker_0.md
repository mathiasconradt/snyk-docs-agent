The high-level steps in implementing the Universal Broker are the same regardless of the configuration method you use. Using the commandsnyk-broker-config walks you through these steps, easing the onboarding, while direct API calls require a greater understanding of the overall Universal Broker models. The steps follow:

Prerequisite: You must be a Tenant admin to be able to create deployments, credential references, and connections.


One time: Install the Snyk Broker App in any Organization: you only have to install the app once regardless of which Organizations you want to use Universal Broker for.. This returns an install ID, a client ID, and a client secret, all needed to interact with the Snyk platform. The Organization ID is required to create the deployment.
One time: Create a Universal Broker deployment for your tenant ID and install ID.
One time: Create credential references needed for your connections.
One time: Create your desired connection or connections.
One time for each Organization integration: Configure the Organizations and integrations that should use the connection.

Illustration of steps in implementing the Universal Broker for GtHub
