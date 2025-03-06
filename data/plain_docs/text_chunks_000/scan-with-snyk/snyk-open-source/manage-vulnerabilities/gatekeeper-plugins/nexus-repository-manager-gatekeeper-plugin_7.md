After the plugin is installed, every time a developer requests a download of an artifact, the following occurs:

Based on the severity thresholds that you configured, the download is blocked.
Scan results are displayed for the developer with a link to full details for the error.
Results are stored in the Snyk Security part of the Attributes section of the Nexus interface for the artifact.

Results of a scan
Attributes displaying results of a scan
By reviewing the results, you can evaluate the issues found in your artifact and determine a course of action.
The following explains the Snyk properties from Nexus.
| Property             | Description                                                                                                                                                        |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| issues_licenses        | Regardless of the thresholds configured, this row displays license summary scan results.                                                                               |
| issues_url             | This is the URL to the Snyk database and explanation of the vulnerability, including specific details about vulnerable versions, available upgrades, and Snyk patches. |
| issues_vulnerabilities | Regardless of the thresholds configured, this row displays vulnerability summary scan results.                                                                         |
