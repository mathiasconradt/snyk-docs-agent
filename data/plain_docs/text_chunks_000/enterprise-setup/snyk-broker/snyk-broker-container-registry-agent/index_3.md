To set up the Snyk Broker and the Container Registry Agent, you must have a Broker token. Contact Snyk Support to obtain your Broker token.

For the Container Registry Agent to work, you must have two separate containers deployed in your infrastructure, creating two separate services. For details, see Components of the network-restricted container registries solution.

The system and software requirements to set up and run the Snyk Broker Container Registry Agent are as follows;

Broker Client machine system requirements: 1 CPU, 256MB of RAM
Container registry agent machine system requirements should be (given MAX_ACTIVE_OPERATIONS=1):
CPU: 1 vcpu
Memory: 2Gb (should be reflected in node memory setting)
Storage: 5Gb
Container registry credentials that have list and pull images permissions
Connection between Broker and Agent
HTTPS connection between the Agent and the registry. For HTTP-only registries, deploy a reverse proxy between the Agent and the container registry.
Download for the Broker Client image on Docker : snyk/broker:container-registry-agent (if using Docker)
Download for the Container Registry Agent image on Docker :  snyk/container-registry-agent:latest If using Docker)


Scaling to adjust scan capacity
With the listed configuration of 1 vCPU and 2GB RAM, scanning capacity would be approximately 160 images of \~350MB each in one run. You can scale this up based on your image sizes. If you have a specific use case that does not allow scaling and does not fit the limitations, contact Snyk Support.
