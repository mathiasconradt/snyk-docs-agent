The following components are needed with network-restricted container registries:

Broker Server: running on the Snyk SaaS backend.
Broker Client and Container Registry Agent: two Docker images deployed in your infrastructure, creating two separate services, responsible for sampling your container registries in a secured manner and sending the allowed information to Snyk

The Broker Client provides the Container Registry Agent with the connection details. The Agent uses these details to connect to the container registry, scan the images, and send the scan results through the brokered communication using callbacks. The brokered communication happens when a Broker Client connects, using your Broker ID, to a Broker Server which runs in the Snyk environment. See the Snyk Broker introductory information for more details.
High-level architecture of the Snyk Broker Container Registry Agent
