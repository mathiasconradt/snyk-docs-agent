Configuring and running the Broker Client for Container Registry Agent
To use the Broker Client with a Container Registry Agent deployment, run docker pull snyk/broker:container-registry-agent if you have not already done so as a prerequisite.
The following environment variables are required to configure the Broker Client.

For DigitalOcean Container Registry, Google Cloud Container Registry, Google Artifact Registry, and Artifactory, there are a few values to note; see Container registry-specific configurations. For Elastic Container Registry, additional setup is required. Specific configurations are also provided.


BROKER_TOKEN - The Snyk Broker token, obtained from your Container registry integration provided by Snyk support.
BROKER_CLIENT_URL - The URL of your Broker Client, including scheme and port, which is used by the container registry agent to call back to Snyk through the brokered connection, for example: \
  "http://my.broker.client:8000". 
This must have http:// and the port number. 
Additional settings are required to configure the client with HTTPS.
CR_AGENT_URL - The URL of your Container Registry Agent, including scheme and port, to which the Broker Client will route the requests, for example: "http://my.container-registry-agent:8081".
CR_TYPE - The container registry type as listed in Supported container registries on this page, for example: "docker-hub", "gcr," "artifactory-cr".
CR_BASE - The hostname of the container registry api to connect to, for example: "cr.host.com".
CR_USERNAME - The username for authenticating to the container registry API.
CR_PASSWORD - The password for authenticating to the container registry API.
CR_TOKEN - Authentication token for the DigitalOcean container registry.
PORT - The local port at which the Broker client accepts connections (default value: 7341).
Optional - BROKER_CLIENT_VALIDATION_URL - URL to configure /systemcheck for the container registry agent. For details, see Configuring and using systemcheck on this page.

Run the Broker Client container with the relevant configuration:
docker run --restart=always \
       -p 8000:8000 \
       -e BROKER_TOKEN="<secret-broker-token>" \
       -e BROKER_CLIENT_URL="<broker-client-url>" \
       -e CR_AGENT_URL="<container-registry-agent-url>" \
       -e CR_TYPE="<container-registry-type>" \
       -e CR_BASE="<container-registry-hostname>" \
       -e CR_USERNAME="<username>" \
       -e CR_PASSWORD="<password>" \
       -e PORT=8000 \
       snyk/broker:container-registry-agent
As an alternative to this command, you can use a derived Docker image to set up the Container Registry Agent. See Derived Docker images for the environment variables to override for the Container Registry Agent.
