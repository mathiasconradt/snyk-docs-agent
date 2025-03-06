In this example, the following command was entered in a terminal to launch a Code Agent container:
docker run --name code-agent \
-p 3000:3000 \
-e PORT=3000 -e SNYK_TOKEN=fa7fxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx --network mySnykBrokerNetwork \
snyk/code-agent
where:

--name is the name of the new Code Agent container, code-agent.
-p - port 3000 on the host machine is mapped to port 3000 on the Code Agent container.
-e PORT is the port of the Code Agent container, where it accepts external connections, 3000.
-e SNYK_TOKEN is the Snyk API token, fa7f….
--network is the name of the Docker bridge network, used for the communication with the Client Broker, mySnykBrokerNetwork.
snyk/code-agent is the Docker image of the Code Agent container.
