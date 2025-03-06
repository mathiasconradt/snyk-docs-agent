The following are typical early integrations.
Source Code Management (SCM) integrations
Integrations with popular version control platforms like GitHub, GitLab, Azure Repos, and Bitbucket seamlessly integrate Snyk security checks into the code review process. This ensures that potential vulnerabilities are identified and addressed before code is merged into the main branch. Important features include:

Daily testing and monitoring of a specified branch, typically the development branch
(optional) Pull Request/Merge Request checks against any branch of the repository
(optional) Automated dependency upgrades and automated security fix upgrades through pull requests

The advantages of SCM integrations are:

Visibility into repository security posture
Automatic Scan on code change
Immediate feedback on issues for the developer
Onboarding repositories can be configured through the UI or API/API Import Tool
Support for Cloud and Private Code Repositories on the Snyk Enterprise plan

See Snyk SCM integrations for more details.
If you have an on-premise Git repository, you must consider deploying Snyk Broker for Snyk to communicate with your repositories.

Enterprise customers can enable and manage Snyk Broker using the API. 
Paid services can be engaged to assist in Snyk Broker deployments.
