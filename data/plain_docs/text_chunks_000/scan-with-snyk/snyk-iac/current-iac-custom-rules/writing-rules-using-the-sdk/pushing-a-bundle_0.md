Optionally, once you have generated your custom rules bundle, you can distribute it automatically to one of our supported OCI registries by using the push command:
snyk-iac-rules push -r docker.io/example/test bundle.tar.gz

Make sure to log into your container registry first, for example, by using Docker run docker login before running the snyk-iac-rules push command.

Snyk uses the OCI registries that support the OCI artifact specification and leverage ORAS to achieve that. Currently supported registries include

Google Container Registry
DockerHub
Elastic Container Registry
Azure Container Registry
JFrog Artifactory OCI Artifacts are supported for Artifactory v7.11.1 and above.
Harbor
GitHub Container Registry


Snyk does not support insecure registries. The only protocol Snyk supports is HTTPS.

After you have run the command, your custom rules bundle will be pushed to your OCI registry using the latest tag.
You can also provide your own tag if you want to version the bundle:
snyk-iac-rules push -r docker.io/example/test:v0.0.1 bundle.tar.gz
You can now run snyk iac test with your newly built custom bundle.
