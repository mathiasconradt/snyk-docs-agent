Multi-tenant settings for regions other than the default\
When you set up Snyk Broker for use in regions other than the default, additional environment variables with specific URLs are required. For the URLs and examples, see Regional hosting and data residency, Broker URLs.

Copy the following command to set up a fully configured Broker Client to use with Nexus 3. You can run the Docker container by providing the relevant configuration:
console
docker run --restart=always \
           -p 7341:7341 \
           -e BROKER_TOKEN=secret-broker-token \
           -e BASE_NEXUS_URL=https://[<user>:<pass>@]<your.nexus.hostname> \
           -e BROKER_CLIENT_VALIDATION_URL=https://<your.nexus.hostname>/service/rest/v1/status[/check] \
           -e RES_BODY_URL_SUB=https://<your.nexus.hostname>/repository \
       snyk/broker:nexus
Copy the following command to set up a fully configured Broker Client to use with Nexus 2. You can run the Docker container by providing the relevant configuration:
docker run --restart=always \
  -p 7341:7341 \
  -e BROKER_TOKEN=<secret-broker-token> \
  -e BASE_NEXUS_URL=https://[username:password]@acme.com \
  -e RES_BODY_URL_SUB=https://acme.com/nexus/content/(groups|repositories) \
  snyk/broker:nexus2
You can find your BASE_NEXUS_URL by visiting the Nexus UI and navigating to the server tab under Administration, then selecting the Base URL entry without a trailing slash. This will typically end with /nexus, but may vary with non-default deployments. If you have a custom base URL then you must also set the NEXUS_URL environment variable to point to the URL where your repositories live. By default this is configured as /nexus/content but should follow a similar format to your base URL.
As an alternative to using the Docker run command, you can use a derived Docker image to set up the Broker Client integration. See Derived Docker images for the environment variables to override for the Nexus3 integration.
