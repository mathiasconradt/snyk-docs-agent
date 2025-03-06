Some package managers rely on context from the local environment. With these package managers, scanning in the local environment or as part of the CI/CD pipeline gives the most accurate results.
To start using the Snyk CLI or a CI/CD plugin, install the Snyk CLI. After you have installed it, you must authenticate your machine to associate the CLI with your Snyk account, as demonstrated in this video.

Authenticate CLI video

A scan with Snyk test provides information about open-source package issues, including fix advice, as demonstrated in this video.

Snyk test video

A scan with snyk code test runs a Static Code Analysis test on the code in that Project, and returns the list of detected vulnerability issues, general information about the test, and a summary of the test findings.
A scan with snyk container test returns a list of vulnerabilities in the container image, along with recommendations for upgrading the base image to one that is more secure.
A scan with snyk iac test returns advice on how to resolve discovered issues in your Infrastructure as code files.
