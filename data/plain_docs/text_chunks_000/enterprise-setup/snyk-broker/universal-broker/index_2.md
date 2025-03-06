Prerequisite: You must be tenant admin to be able to create deployments, credentials reference(s) and connection(s).

The high-level steps in implementing the Unversal Broker follow.

One time: Install the Snyk Broker App in your Organization. This returns an install ID, a client ID, and a client secret, all needed to interact with the Snyk platform. The Organization ID is required to create the deployment.
One time: Define a deployment for your tenant ID and install ID.
One time: Define credentials references needed for your connections.
One time: Define your desired connection or connections.
One time for each Organization integration: Configure the Organizations and integrations that should use the connection.

Deployment, connections, and organizations
After defining the desired connections, run the Broker Client. The integration between connections and Organizations and integrations is then done independently from the Universal Broker deployment, reducing the required activities on the running containers or Kubernetes deployment. 
By using the snyk-broker-config command or by making an HTTP request against the relevant API endpoint, you can integrate connections or disconnect from a given Organization. The Broker client will manage the connections based on what the Broker administrators have declared as the desired state according to this model. It may take up to two minutes to pick up the changes in a deployment.
