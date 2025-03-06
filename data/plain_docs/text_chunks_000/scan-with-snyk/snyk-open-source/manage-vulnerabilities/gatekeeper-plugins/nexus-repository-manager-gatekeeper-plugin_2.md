Use the Snyk capability with your Nexus Repository Manager to test your artifacts for vulnerabilities and license issues at installation of this plugin and also every time developers make a request to download any one of the artifacts.

The admin installs and updates the Snyk configurations on the Nexus instance from the Capabilities section, including the authentication token and Organization ID from Snyk.
Snyk authenticates the account configuration using the API token and Organization ID that the admin entered and then runs in the background continuously.
When the developer attempts to download an artifact from the Nexus instance to the local environment, based on the severity thresholds configured for the Snyk Security Configuration capability, the package is blocked.
The error appears in the developer’s CLI and includes a link to the error with full details, and also appears from the Nexus interface for administrators, detailing the number of known issues for vulnerabilities and licenses.
