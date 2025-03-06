The following pages explain how to install these special integrations.

GitHub
GitHub Enterprise
Bitbucket Server/Data Centre
Gitlab
Azure Repos
JFrog Artifactory Repository
Nexus Repository Manager
Jira
Snyk Broker - Container Registry Agent (needed to connect to Container Registries)
Derived Docker images for Broker Client integrations and Container Registry Agent

You can customize the configuration using the environment variables in the Docker images. For this reason, install separate, multiple instances of the Broker Client for different integration types to ensure proper configuration as well as redundancy.
You can verify that the Broker is running by looking at the settings for your brokered integration in the Snyk Web UI to see a confirmation message that you are connected. You can start importing Projects once you are connected.
