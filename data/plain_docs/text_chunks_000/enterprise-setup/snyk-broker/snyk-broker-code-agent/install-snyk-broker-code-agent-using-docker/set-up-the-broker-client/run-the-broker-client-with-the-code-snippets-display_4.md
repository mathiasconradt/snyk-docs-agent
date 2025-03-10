Run the Broker client for an integrated GitHub server
The following command was entered to run the Broker client for an integrated GitHub server:
docker run --restart=always \
   -p 8000:8000 \
   -e BROKER_TOKEN=b1dcxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx \
   -e GITHUB_TOKEN=ghp_xxxxxxxxxxxxxxxxxxxxxx \
   -e BROKER_CLIENT_URL=http://localhost:8000 \
   -e PORT=8000 \
   -e GIT_CLIENT_URL=http://code-agent:3000 \
   -e ACCEPT=/private/accept.json \
   -v /private:/private \
   --network mySnykBrokerNetwork \
snyk/broker:github-com
where:

-p 8000:8000is port number 8000 on the host machine, mapped to port number 8000 on the Broker Client container. This is used for the communication between the Broker Client container and the Broker Server and Code Agent.
-e BROKER_TOKEN is the Broker token associated with the specific Organization and GitHub.
-e GITHUB_TOKEN is the GitHub token for accessing the GitHub repositories.
-e BROKER_CLIENT_URL is the URL to the host machine of the Broker Client, http://localhost:8000.
-e PORT is the local port, where the Broker client container accepts connections, 8000.
-e GIT_CLIENT_URL=http://code-agent:3000 is the URL to the port of the running Code Agent container. The URL includes the name of the Code Agent container – code-agent - with its port no. - 3000.
-e ACCEPT=/private/accept-github.json is the name of the folder that stores the downloaded accept.json file, private, and the name of the file for GitHub, accept.json.
-v /private:/private is the path to the folder that stores the accept-github.json file, private, and the name of the folder, private.
--network is the name of the Docker bridge network, used for communication with the Broker, client mySnykBrokerNetwork.
snyk/broker:github-com is the Docker image of the Broker client for GitHub.
