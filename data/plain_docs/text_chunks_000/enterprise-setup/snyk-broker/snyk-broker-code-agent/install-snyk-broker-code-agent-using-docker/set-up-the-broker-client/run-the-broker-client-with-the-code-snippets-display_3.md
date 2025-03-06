In the terminal, enter the following command to launch the Broker client:
docker run --restart=always \
   -p <host_machine_port_no._mapped to>:<Broker_Client_container_port_ no.> \
   -e BROKER_TOKEN=<Broker_token> \
   -e <SCM>_TOKEN=<SCM_token> \
   -e <SCM_domain>=<my.SCM.domain.com_(without_http/s)> \  
   -e BROKER_CLIENT_URL=<http://my.broker.client:<host_machine_port_no.> \
   -e PORT=<Broker_Client_container_port_no.> \
   -e GIT_CLIENT_URL=http://<Code_Agent_container_name:Code_Agent_port_no.> \
   -e ACCEPT=/<folder_name>/accept.json \
   -v /local/path/to/<folder_name>:/<folder_name> \
   --network mySnykBrokerNetwork \
   snyk/broker:<SCM_tag>
where:

-- restart=always is a Docker command that determines that the Broker client container will always restart regardless of the exit status.
-p <host_machine_port_no._mapped to>:<Broker_Client_container_port_ no.> is the mapping of a physical open port in the host machine to a port in the Broker client container. These port numbers on the host machine and container do not have to be the same, for example, 8001:8000. The port number of the host machine must be unique.
-e BROKER_TOKEN is the Broker token that is associated with the specific Organization and the specific integrated SCM.
-e <SCM_TOKEN> is the SCM token for the specific integrated SCM.
-e <SCM_domain>= is your SCM domain name without http/https, for example, snyk.git.com. For each SCM,. Use the following parameter:
GitHub - the -e <SCM_domain> parameter is NOT required.
GitHub Enterprise: -e GITHUB\
    For GitHub Enterprise add the following parameters also:\
    -e GITHUB_API=<your.ghe.domain.com/api/v3_(without_http/s)> \\
    -e GITHUB_GRAPHQL=<your.ghe.domain.com/api_(without_http/s)> \
Azure Repos: -e AZURE_REPOS_HOST\
    For Azure Repos add the following parameter also:\
    -e AZURE_REPOS_ORG=<azure_repo_org_name> \
Bitbucket Server/Data Center: -e BITBUCKET\
    For Bitbucket Server/Data Center add the following parameter also:\
    -e BITBUCKET_API=<your.bitbucket-server.domain.com/rest/api/1.0_(without http/s)> \
GitLab: -e GITLAB
[Optional] -e BROKER_CLIENT_URL= is the URL to the host machine of the Broker client. The URL can include an IP address or a DNS with the port number of the host machine, for example, http://localhost:8001.\
  Add this parameter only if you are using the same Broker client for other Snyk products, and you want to enable for them the Automatic PR Checks feature. Since the Automatic PR Checks feature is not supported for the Code Agent, you do not have to use this parameter for the Code Agent.
-e PORT is the port number of the Broker Client container, where it accepts external connections. The default is 8000. This port number must be the same as the <Broker_Client_container_port_ no.> in the -p parameter above.
-e GIT_CLIENT_URL= is a URL to the port of the running Code Agent container. The URL includes the name of the Code Agent container with its port number, for example, http://code-agent:3000.
-e ACCEPT= is the name of the folder that stores the downloaded accept.json file with the name of the file, for example, /private/accept.json.
-v /local/path/to/<folder_name>:/<folder_name> is the path to the folder that stores the accept.json file with the name of the folder, for example, /private:/private.
--network is the name of the Docker bridge network, used for communication with the Code Agent.
snyk/broker:<SCM_tag> is the Docker image of the Broker Client for the specific integrated SCM.

Once the Broker client setup is completed successfully, the following message appears in the terminal:

Confirmation message for Broker Client setup
To verify the setup and details of the Broker client container, run:
docker ps
The output is similar to the following:
CONTAINER ID   IMAGE                     COMMAND                  CREATED             STATUS             PORTS                    NAMES
1cef6e3e3290   snyk/broker:github-com    "broker --verbose"       About an hour ago   Up About an hour   0.0.0.0:8000->8000/tcp   nifty_cori  
6216e27b8d28   snyk/code-agent           "docker-entrypoint.s…"   2 hours ago         Up 2 hours         0.0.0.0:3000->3000/tcp   code-agent
