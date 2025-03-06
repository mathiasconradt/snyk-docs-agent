Integration with self-hosted container registries contains the following components:

Broker Server - running on Snyk SaaS backend
Broker Client and Container Registry Agent - two Docker images deployed in your infrastructure, creating two separate services responsible for sampling your container registries in a secured manner and sending the allowed information to Snyk.

High-level architecture of the Snyk Broker Container Registry Agent
The Broker Client provides the Agent with the connection details. The Agent uses these details to connect to the container registry, scan the images, and send the scan results through the brokered communication using callbacks.
The brokered communication happens when a Broker Client connects (using your Broker ID) to a Broker server that runs within the Snyk environment.
For more details, see Snyk Broker - Container Registry Agent.
