You can also configure the location of the custom rules bundle using Snyk config for your Organization. In your Project folder, use the following command to configure your container registry with the Snyk IaC CLI:
snyk config set oci-registry-url=registry-1.docker.io/org-account/org-bundle-image:1.3.14
This sets the Snyk environment variable SNYK_CFG_OCI_REGISTRY_URL.

Ensure the OCI Registry URL is a valid URL, for example, for DockerHub:
registry-1.docker.io/org-account/org-bundle-image:1.3.14
Be sure to clear any previously defined URLs in the Snyk Settings page or disable custom rules, as only one method for defining the bundle's path should be defined at any given time.
