You can use the /systemcheck endpoint of the Broker Client to verify connectivity between the Broker Client, the Container Registry Agent, and your container registry.
To use the endpoint, provide the following environment variable to the Broker Client:\
BROKER_CLIENT_VALIDATION_URL=<agent-url>/systemcheck
When you call the /systemcheck endpoint of the Broker Client, it uses the BROKER_CLIENT_VALIDATION_URL to make a request to the /systemcheck endpoint Container Registry Agent, with the credentials provided to the Broker Client. The Container Registry Agent then makes a request to the container registry to validate connectivity.

The /systemcheck endpoint is not mandatory for the brokered integration to function. For more information, see Systemcheck documentation.
