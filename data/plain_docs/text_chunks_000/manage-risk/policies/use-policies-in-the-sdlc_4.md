For GitHub Projects monitored by Snyk, any new pull request from a contributing developer can be checked against policies assigned to that Project. This ensures that policy-breaking code cannot be committed to the repository.

See PR Checks for details of Snyk’s PR Checks feature.

An example follows of a PR check on a JavaScript package license.
This example shows a pull request to add the fullpage.js package to a JavaScript application. Although this change passes the security policy check, because the latest version of the package has no known vulnerability, it fails the license policy check because the GPLv3 license is included in violation of the license policy of the company.
PR Check fails on license compliance
