Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

Copy the following command to set up a fully configured Broker Client to use with Artifactory Registry. You can run the Docker container by providing the relevant configuration:
console
docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=secret-broker-token \
           -e ARTIFACTORY_URL=<yourdomain>.artifactory.com/artifactory \
       snyk/broker:artifactory
For an npm or Yarn integration, use the following command.
docker run --restart=always \
  -p 8000:8000 \
  -e BROKER_TOKEN=secret-broker-token \
  -e ARTIFACTORY_URL=acme.com/artifactory \
  -e RES_BODY_URL_SUB=http://acme.com/artifactory \ 
  snyk/broker:artifactory
As an alternative to using the Docker run command, you can use a derived Docker image to set up the Broker Client integration. See Derived Docker images for the environment variables to override for the Artifactory integration.
