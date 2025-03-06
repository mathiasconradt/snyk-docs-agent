The following command was entered to run the Broker client for an integrated Azure Repos Server:
docker run --restart=always \
   -p 8000:8001 \
   -e BROKER_TOKEN=fe5bxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx \
   -e AZURE_REPOS_TOKEN=brmyxxxxxxxxxxxxxxxx \
   -e AZURE_REPOS_ORG=snyktest \
   -e AZURE_REPOS_HOST=dev.azure.com \
   -e BROKER_CLIENT_URL=http://localhost:8000 \
   -e PORT=8001 \
   -e GIT_CLIENT_URL=http://code-agent:3000 \
   --network mySnykBrokerNetwork \
snyk/broker:azure-repos
where:

-p 8000:8001 is the port number 8000 on the host machine, mapped to port number 8001 on the Broker client container. This is used for the communication between the Broker client container and the Broker server and Code Agent.
-e BROKER_TOKEN is the Broker token that is associated with the specific Organization and Azure Repos.
-e AZURE_REPOS_TOKEN is the Azure Repo token for accessing the Azure Repos repositories.
-e AZURE_REPOS_ORG -is the name of the Azure Repos organization, snyktest.
-e AZURE_REPOS_HOST is the domain name of the Azure Repos Server, dev.azure.com.
-e BROKER_CLIENT_URL is the URL to the host machine of the Broker client, http://localhost:8000.
-e PORT - the local port, where the Broker client container accepts connections, 8001.
-e GIT_CLIENT_URL=http://code-agent:3000 is the URL to the port of the running Code Agent container. The URL includes the name of the Code Agent container – code-agent - with its port no. - 3000.
--network is the name of the Docker bridge network, used for communication with the Broker client, is mySnykBrokerNetwork.
snyk/broker:azure-repos is the Docker image of the Broker client for Azure Repos.
