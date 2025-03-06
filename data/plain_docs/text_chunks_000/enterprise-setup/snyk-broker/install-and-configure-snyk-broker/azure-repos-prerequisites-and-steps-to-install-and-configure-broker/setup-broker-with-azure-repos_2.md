Copy the following command to set up a fully configured Broker Client to analyze Open Source, IaC, Container, Code files, and Snyk Essentials information for one Azure organization. Enable Snyk Essentials to identify your application assets, monitor them, and prioritize the risks.

Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

Note that if you have more than one Azure organization, you must deploy a Broker for each one. Snyk Essentials is set by default to false. Enable it by setting the flag to true.
bash
docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=<secret-broker-token> \
           -e AZURE_REPOS_TOKEN=<secret-azure-token> \
           -e AZURE_REPOS_ORG=<org-name> \
           -e AZURE_REPOS_HOST=<your.azure-server.domain.com (no http/s)> \
           -e PORT=8000 \
           -e BROKER_CLIENT_URL=<http://broker.url.example:8000 (dns/IP:port)> \
           -e ACCEPT_IAC=tf,yaml,yml,json,tpl \
           -e ACCEPT_CODE=true \
           -e ACCEPT_ESSENTIALS=true \
       snyk/broker:azure-repos
As an alternative to using the Docker run command, you can use a derived Docker image to set up the Broker Client integration. See Derived Docker images for the environment variables to override for the Azure Repos integration.
