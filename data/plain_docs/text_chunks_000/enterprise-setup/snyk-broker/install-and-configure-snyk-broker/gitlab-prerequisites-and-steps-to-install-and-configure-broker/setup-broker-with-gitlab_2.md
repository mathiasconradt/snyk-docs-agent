Copy the following command to set up a fully configured Broker Client to analyze Open Source, IaC, Container, Code files, and Snyk Essentials information. Enable Snyk Essentials to identify your application assets, monitor them, and prioritize the risks.

Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

bash
docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=<secret-broker-token> \
           -e GITLAB_TOKEN=<secret-gitlab-token> \
           -e GITLAB=<your.gitlab.domain.com (no http/s)> \
           -e PORT=8000 \
           -e BROKER_CLIENT_URL=<http://broker.url.example:8000 (dns/IP:port)> \
           -e ACCEPT_IAC=tf,yaml,yml,json,tpl \
           -e ACCEPT_CODE=true \
           -e ACCEPT_ESSENTIALS=true \
       snyk/broker:gitlab
Use the environment variable REMOVE_X_FORWARDED_HEADERS=true to remove the XFF headers from the requests made by the Broker client to GitLab. This allows the Broker to work properly.
Snyk Essentials is set by default to false. Enable it by setting the flag to true.
As an alternative to using the Docker run command, you can use a derived Docker image to set up the Broker Client integration. See Derived Docker images for the environment variables to override for the GitLab integration.
