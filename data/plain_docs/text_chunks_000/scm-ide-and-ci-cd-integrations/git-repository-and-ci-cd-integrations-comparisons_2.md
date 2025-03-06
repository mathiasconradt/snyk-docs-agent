Use CI/CD integrations to accomplish the following:

Keep your code and deployed applications secure
Give visibility to components that are pushed to production by either breaking builds and reporting to Snyk or only reporting to Snyk.

When implementing CI/CD integration, consider the following:

Some package managers require local context and are better run within your environment, including Scala, Gradle, Go modules, Artifactory, and Nexus.
CI/CD integrations offer granular options to block the build, providing a strong gatekeeper.
CI/CD integration is a best practice for container and infrastructure as code scans. For IaC, to get more accurate results, scan a Terraform plan file rather than the untemplated IaC declarations.

For more details, see Snyk CI/CD Integration deployment and strategies.
