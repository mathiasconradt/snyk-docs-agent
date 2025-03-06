Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

Copy the following command to set up a fully configured Broker Client to use with Jira. You can run the Docker container by providing the relevant configuration:
console
docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=secret-broker-token \
           -e JIRA_USERNAME=username \
           -e JIRA_PASSWORD=password \
           -e JIRA_HOSTNAME=your.jira.domain.com \
           -e BROKER_CLIENT_URL=http://my.broker.client:8000 \
           -e PORT=8000 \
       snyk/broker:jira
If necessary, navigate to Advanced configuration for Snyk Broker Docker installation and make any configuration changes needed, for example, providing the CA (Certificate Authority) to the Broker Client configuration when the Jira instance is using a private certificate.
As an alternative to using the Docker run command, you can use a derived Docker image to set up the Broker Client integration. See Derived Docker images for the environment variables to override for the Jira integration.
