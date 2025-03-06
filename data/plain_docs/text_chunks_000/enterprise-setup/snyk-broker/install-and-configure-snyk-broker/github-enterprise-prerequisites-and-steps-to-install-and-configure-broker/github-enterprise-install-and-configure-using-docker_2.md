Copy the following command to set up a fully configured Broker Client to analyze Open Source, IaC, Container, Code files (with the Code Agent), and Snyk Essentials information. Enable Snyk Essentials to identify your application assets, monitor them, and prioritize the risks.

Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

bash
docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=<secret-broker-token> \
           -e GITHUB_TOKEN=<secret-github-token> \
           -e GITHUB=<your.ghe.domain.com (no http/s)> \
           -e GITHUB_API=<your.ghe.domain.com/api/v3 (no http/s)> \
           -e GITHUB_GRAPHQL=<your.ghe.domain.com/api (no http/s)> \
           -e PORT=8000 \
           -e BROKER_CLIENT_URL=<http://broker.url.example:8000 (dns/IP:port)> \
           -e ACCEPT_IAC=tf,yaml,yml,json,tpl \
           -e ACCEPT_CODE=true \
           -e ACCEPT_ESSENTIALS=true \
       snyk/broker:github-enterprise

Snyk Essentials is set by default to false. Enable it by setting the flag to true.

As an alternative to using the Docker run command, you can use a derived Docker image to set up the Broker Client integration. See Derived Docker images for the environment variables to override for the GitHub Enterprise integration.
