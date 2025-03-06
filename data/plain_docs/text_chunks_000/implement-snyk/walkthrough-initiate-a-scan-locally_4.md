Some package managers rely on context from the local environment, so testing in the local environment or as part of the CI/CD pipeline provides the most accurate results.
First, install the Snyk CLI. After installation, you must authenticate it to your Snyk account, as demonstrated in this video.

Authenticate CLI video

A scan with Snyk test provides information about open-source package issues, including fix advice, as demonstrated in this video.

Snyk test video

A scan with Snyk code test runs a Static Code Analysis test on the code in that Project, and returns the list of detected vulnerability issues, general information about the test, and a summary of the test findings.
A scan with Snyk container test returns a list of vulnerabilities in the container image, along with recommendations for upgrading the base image to one that is more secure.
A scan with Snyk iac test returns advice on how to resolve discovered issues in your infrastructure as code files.
