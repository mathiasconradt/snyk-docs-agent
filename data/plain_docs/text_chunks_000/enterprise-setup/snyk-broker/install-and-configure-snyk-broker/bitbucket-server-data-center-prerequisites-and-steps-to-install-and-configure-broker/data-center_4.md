Copy the following command to set up a fully configured Broker Client to analyze Open Source, IaC, Container, Code files, and Snyk Essentials information. Enable Snyk Essentials to identify your application assets, monitor them, and prioritize the risks.
bash
docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=<secret-broker-token> \
           -e BITBUCKET_PAT=<personal-access-token> \
           -e BITBUCKET=<your.bitbucket-server.domain.com (no http/s)> \
           -e BITBUCKET_API=<your.bitbucket-server.domain.com/rest/api/1.0 (no http/s)> \
           -e PORT=8000 \
           -e BROKER_CLIENT_URL=<http://broker.url.example:8000 (dns/IP:port)> \
           -e ACCEPT_IAC=tf,yaml,yml,json,tpl \
           -e ACCEPT_CODE=true \
           -e ACCEPT_Essentials=true \
       snyk/broker:bitbucket-server-bearer-auth

Snyk Essentials is set by default to false. Enable it by setting the flag to true.

As an alternative to using the Docker run command, you can use a derived Docker image to set up the Broker Client integration. See Derived Docker images for the environment variables to override for the BitBucket Server/Data Center integration.
