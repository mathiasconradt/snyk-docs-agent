This guide is provided to help you apply Snyk effectively in your technology stack.
Package Registry Integrations (Artifactory/Nexus) - Maven
Artifactory and Nexus Package Registry integrations are available to Snyk Enterprise plan users.

Snyk Open Source uses Artifactory or Nexus to resolve transitive dependencies through private packages.
Snyk can be connected to a publicly available instance using username and password or a private server on your network using the Snyk Broker.
Snyk Open Source provides integrations with Artifactory and Nexus, both as local gatekeepers and interacting with the registry for security testing. See Nexus Repository Manager setup and Artifactory Registry setup


If you are not a Snyk Enterprise user using Artifactory or Nexus, analysis is best performed using CLI, as the build system will retrieve the dependencies and be present locally.

For more information on package registry integrations, including Maven, see the following:

Package registry integrations: Nexus Repository Manager setup and Artifactory Registry setup
Artifactory Registry for Maven
Nexus Registry for Maven
Nexus Container Registry: Container security with Nexus integration
Gatekeeper plugins: Artifactory Gatekeeper plugin and Nexus Repository Manager Gatekeeper plugin
