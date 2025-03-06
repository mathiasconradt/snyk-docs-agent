The Helm chart does not manage connectivity, and thus you will be responsible for managing ingress in the Kubernetes cluster.
To use this chart, you must first add the Snyk Broker Helm Chart by adding the repo:
helm repo add snyk-broker https://snyk.github.io/snyk-broker-helm/
Then run the commands to customize the environment variables for each SCM, registry, or Jira as explained on the following pages:

GitHub scmType: github-com
GitHub Enterprise scmType: github-enterprise
Bitbucket Server/Data Center scmType: bitbucket-server
GitLab scmType: gitlab
Azure Repos scmType: azure-repos
JFrog Artifactory scmType: artifactory
Nexus 3 scmType: nexus
Nexus 2 scmType: nexus2
Jira scmType: jira

scmType designates the system type. For JFrog and Nexus, this is an artifact repository, For Jira, it is a ticket management system.
Running the commands for each SCM, registry, or Jira creates a namespace called snyk-broker. To deploy into an existing namespace, adjust the -n parameter and delete the --create-namespace parameter. See also Deploying multiple Brokers in the same namespace.
Beginning with version 2.0.0, all created objects have a suffix based on the release name, allowing for multiple Brokers in the same namespace. For backward compatibility, 2.1.0 introduces a disableSuffixes flag to revert to the 1.x.x behavior by adding --set disableSuffixes=true.
Additional commands are available to install Snyk Broker - Container Registry Agent, needed to connect to Container Registries; scmType: container-registry-agent\
You can verify that the Broker is running by looking at the settings for your brokered integration in the Snyk Web UI to see a confirmation message that you are connected. You can start importing Projects once you are connected.
