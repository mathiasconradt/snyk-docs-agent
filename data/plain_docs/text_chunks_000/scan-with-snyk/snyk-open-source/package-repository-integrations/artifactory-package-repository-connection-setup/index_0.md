Feature availability\
Package repository integrations are available only with Enterprise plans. For more information, see plans and pricing.
Supported projects\
The Artifactory Package Repository integration supports Node.js (npm and Yarn) and Maven Projects. For Improved Gradle SCM scanning, use the Maven settings.

Connecting a custom Artifactory Package Repository enables Snyk to resolve all direct and transitive dependencies of packages hosted on the custom registry and calculate a more complete, accurate dependency graph and related vulnerabilities.
You can configure these types of Artifactory Package Repository:

Publicly accessible instances protected by basic authentication
Instances on a private network by using Snyk Broker (with or without basic authentication).

These instructions apply to configuring publicly accessible instances. For instructions on configuring a brokered instance, see the setup instructions for Snyk Broker with Artifactory Repository.
The steps to set up Artifactory Repository Manager follow.

Navigate to Settings > Integrations > Package Repositories > Artifactory.
Enter the URL of your Artifactory instance; this must end with /artifactory.
Enter your username and password.
Select Save.

Artifactory repository setup
