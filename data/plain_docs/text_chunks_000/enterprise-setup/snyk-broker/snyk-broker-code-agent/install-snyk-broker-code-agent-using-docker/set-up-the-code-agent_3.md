Once the Code Agent image is stored on your machine, in the terminal, enter the following command to launch a container based on the Snyk Broker Code Agent image:
docker run --name <container_name> \
-p <host_machine_port_no._mapped to>:<Code_Agent_container_port_ no.> \
-e PORT=<Code_Agent_container_port_no.> -e SNYK_TOKEN=<Snyk_API_token> --network <network_name> \
snyk/code-agent:<image_tag>
where:

--name <container_name> is a new name for the Code Agent container. This name is used to define the GIT_CLIENT_URL parameter for the Broker Client that you run next, for example, code-agent.
-p <host_machine_port_no._mapped to>:<Code_Agent_container_port_no.> is the mapping of a physical open port in the host machine to a port in the Code Agent container. These port numbers on the host machine and container do not have to be the same.\
  Example: 3001:3000.\
  The port number of the host machine must be unique.
-e PORT is the port of the Code Agent container, where it accepts external connections. The default is 3000. This port number must be the same as the <Code_Agent_container_port_ no.> in the -p preceding parameter.
-e SNYK_TOKEN is your Snyk API token as it appears in your Account Settings page on the Snyk Web UI.
--network is the name of the Docker bridge network that was previously created, for example, mySnykBrokerNetwork.
snyk/code-agent:<image_tag> is the Docker image of the Code Agent container. Specify a tag if not using latest.

When the Code Agent setup is completed successfully, the following message appears in the terminal:

Success message when Code Agent setup is completed
