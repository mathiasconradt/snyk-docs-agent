To run Snyk Broker with the Code Agent, you must establish a network connection between them. To do this you can create a Docker bridge network as explained here.

For more information on Docker bridge networks, see the Docker documentation.
To establish this network connection between the Broker Client and the Code Agent, you can also use other methods and tools, like Ngrok.

To create a Docker bridge network run:
docker network create <network_name>
where network_name is a name for the new network between the Broker Client and the Code Agent, for example:
docker network create mySnykBrokerNetwork
where mySnykBrokerNetworkis the name of the new network.
To verify the network creation run:
docker network ls
Your output is similar to the following:
NETWORK ID     NAME                  DRIVER    SCOPE
cb352a803eb0   mySnykBrokerNetwork   bridge    local
