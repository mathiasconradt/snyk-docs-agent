The following command was entered to run the Broker client for an integrated Azure Repos server:
docker run --restart=always \
   -p 8001:8001 \
   -e BROKER_TOKEN=fe5bxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx \
   -e AZURE_REPOS_TOKEN=brmyxxxxxxxxxxxxxxxx \
   -e AZURE_REPOS_ORG=snyktest \
   -e AZURE_REPOS_HOST=dev.azure.com \
   -e BROKER_CLIENT_URL=http://localhost:8001 \
   -e PORT=8001 \
   -e GIT_CLIENT_URL=http://code-agent:3000 \
   -e ACCEPT=/private/accept.json \
   -v ./private:/private \
   --network mySnykBrokerNetwork \
snyk/broker:azure-repos
where:

-p 8001:8001 is port number 8001 on the host machine, mapped to port number 8001 on the Broker Client container, for communication between the Broker Client container and the Broker Server and Code Agent.
-e BROKER_TOKEN is the Broker token associated with the specific Organization and Azure Repos.
-e AZURE_REPOS_TOKEN is the Azure Repo token for accessing the Azure Repos repositories.
-e AZURE_REPOS_ORG is the name of the Azure Repos organization, snyktest.
-e AZURE_REPOS_HOST is the domain name of the Azure Repos Server, dev.azure.com.
-e BROKER_CLIENT_URL is the URL of the host machine of the Broker client, http://localhost:8001.
-e PORT is the local port, where the Broker Client container accepts connections, 8001.
-e GIT_CLIENT_URL=http://code-agent:3000 is the URL to the port of the running Code Agent container. The URL includes the name of the Code Agent container, code-agent, with its port number, 3000.
-e ACCEPT=/private/accept.json is the name of the folder that stores the downloaded accept.json file, private, and the name of the file for GitHub, accept.json.
-v ./private:/private is the path to the folder that stores the accept.json file, private, and the name of the folder. private.
--network is the name of the Docker bridge network, used for communication with the Broker client, mySnykBrokerNetwork.
snyk/broker:azure-repos is the Docker image of the Broker client for Azure Repos.
