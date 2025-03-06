Broker version 4.205.1 has been released. In this version, all ACCEPT rule flags will be enabled by default. This reduces needed configuration. If you do not want a specific ACCEPT rule flag to be enabled, you can opt out of the default ACCEPT all behavior by adding ACCEPT_=false to your Broker client configuration.

Before starting installation, review the Prerequisites and other information on the page Prepare Snyk Broker for deployment.
If you are using Kubernetes, Snyk recommends that you install Snyk Broker with the Broker Helm Chart. For details, see Install and configure Broker using Helm.
For all other environments, you can install Snyk Broker using the Docker images provided by Snyk. The pages listed here explain how to set up the Snyk Broker Client integrations using Docker.
