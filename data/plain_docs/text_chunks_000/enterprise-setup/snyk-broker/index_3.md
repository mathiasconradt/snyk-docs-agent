To use Snyk Open Source with Snyk Broker, you need only the Broker Server and Broker Client components. The Broker Client is published as a set of Docker images, each configured for a specific Git service. Configure each type of integration using environment variables following the links in the section Integrations with Snyk Broker.
To scan other types of code with Snyk Broker, you must add a component or configurations and add parameters to the Broker Client setup:

Snyk Code – Grant Broker access to perform a Git clone of your repository by adding an environment variable: ACCEPT_CODE=true.
Snyk Container – add the Container Registry Agent to enable the connection to network-restricted container registries and the analysis of container images. There are instructions for installing with Docker and installing with Helm.
Snyk Infrastructure as Code – configure the accept.json file with additional parameters to detect and analyze Terraform, CloudFormation, and Kubernetes configuration files through Snyk Broker.
