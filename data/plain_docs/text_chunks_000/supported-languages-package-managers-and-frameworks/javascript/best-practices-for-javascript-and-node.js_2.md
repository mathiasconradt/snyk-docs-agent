Artifactory, Nexus, npm Teams, and npm Enterprise Package Registry integrations are available to Snyk Enterprise plan users.
Snyk Open Source Gatekeeper plugins integrate with Artifactory and Nexus to block builds from downloading packages with vulnerability and license issues.
Snyk Open Source can also integrate with Artifactory, Nexus, npm Teams, and npm Enterprise to assist in the security testing of your applications. Snyk uses this integration for dependency resolution, fix calculation, and re-locking lock files.
If your Projects reference private dependencies in these repositories but you are not a Snyk Enterprise user, you can use the Snyk CLI in a properly configured local environment (such as your build pipeline) so these dependencies can be resolved and included in the test.
For more information, see the following:

Package registry integrations: npm Teams and npm Enterprise, Artifactory Registry setup and Nexus Repository Manager setup.
Gatekeeper plugins: Artifactory Gatekeeper plugin and Nexus Repository Manager Gatekeeper plugin
