Vulnerability information
When Snyk Container detects vulnerabilities, they are presented in the output:
Vulnerabilities detected with Snyk Container
Each vulnerability contains the following information:
| Field              | Description                                                                                                                                                                                                                                    |
| ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Severity           | The importance of the specific vulnerability. For more information, see Severity levels of detected Linux vulnerabilities. |
| A clear heading    | A summary of the vulnerability and the package it affects.                                                                                                                                                                                         |
| Description        | A brief description of the type of issue or Common Vulnerabilities and Exposure (CVE) reference, if a CVE exists.                                                                                                                                  |
| Info               | A link to vulnerability details, including links to upstream sources and global vulnerabilities databases.                                                                                                                                         |
| Introduced through | The top-level package names that the vulnerability affects.                                                                                                                                                                                        |
| From               | How the affected packages came to be in the image.                                                                                                                                                                                                 |
| Introduced by      | Whether the vulnerability is in the base image or which line in the Dockerfile introduced the vulnerability.                                                                                                                                       |
| Fixed in           | If available, the version of the package that has a fix for the vulnerability.                                                                                                                                                                     |
Vulnerabilities appear in reverse order of severity so that you can see the most important issues first, with limited scrolling required.
Snyk also reports the total dependencies scanned for known vulnerabilities and the total number of vulnerabilities.
Example of total dependencies scanned and the issues found

Snyk groups together vulnerabilities that are found in multiple packages. This helps you focus on the number of vulnerabilities rather than the instances only.
