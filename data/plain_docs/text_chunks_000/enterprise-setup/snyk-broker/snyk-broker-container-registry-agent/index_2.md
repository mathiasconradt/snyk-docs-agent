Using the Snyk Broker Container Registry Agent you can integrate Snyk with the following open-source container registries:

JFrog Container Registry (Artifactory) (type: artifactory-cr)
Harbor registry (type: harbor-cr)
Azure Container Registry (type: acr)
Google Cloud Container Registry (GCR) (type: gcr)
Amazon Elastic Container Registry (ECR) (type: ecr)
Google Artifact Registry (type: google-artifact-cr)
Docker Hub registry (type: docker-hub). Snyk Broker is unable to connect to a self-hosted instance of OCI Distribution, that is, docker.io/registry.
RedHat Quay container registry (type: quay-cr)
Nexus registry (type: nexus-cr)
GitHub Container registry (type: github-cr)
DigitalOcean Container Registry (type: digitalocean-cr)
GitLab Container Registry (type: gitlab-cr)

Artifactory and Nexus are also available as private package repositories with Broker options. The Brokers required for the Container Registry must be those specified in Prerequisites for Container Registry Agent, not the Brokers for snyk/broker:artifactory or snyk/broker:nexus.
GitHub Container registry and GitLab Container Registry do not follow Docker v2 API; they do not have the /v2/_catalog endpoint. Thus, it is not possible to list images in repos, and you must manually specify the images you wish to scan.
