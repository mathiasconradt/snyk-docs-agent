Feature availability\
This feature is available only with Enterprise plans. For more information, see plans and pricing.

Install the Snyk Nexus Repository Manager Gatekeeper Plugin directly on the Nexus instance to track open-source vulnerabilities and license details in your artifacts based on your configurations.
After the plugin is installed, Snyk runs in the background and whenever a download is requested from the developer's CLI, Snyk automatically does the following:

Scans artifacts for license issues and for vulnerabilities and delivers fix data for known vulnerabilities found in the artifact
Blocks developers from downloading vulnerable packages based on Snyk results and your severity threshold configurations

By scanning artifacts as part of your work and then displaying those test results, the Snyk plugin enables developers to see the risks associated with their packages and administrators to track and identify issues that are a risk to application security more quickly, and to avoid using those artifacts in Projects.
