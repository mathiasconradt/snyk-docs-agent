To use the Code Agent  in an infrastructure that uses a proxy, add the following environment variables to the docker run command of the Code Agent:
-e HTTP_PROXY=http://my.proxy.address:<port_no.> \
-e HTTPS_PROXY=http://my.proxy.address:<port_no.>
If your proxy requires username and password authentication, add the following additional environment variable:
-e PROXY_AUTH=userID:userPass
In addition, add these environment variables to the Broker Client component and a command to bypass the Code Agent.
For more information on using Docker containers with a proxy, see Configure Docker to use a proxy server.
