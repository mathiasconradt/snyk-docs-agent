Below are typical early integrations.
Source Code Management (SCM) integrations
Integrations with popular version control platforms like GitHub, GitLab, Azure Repos, and Bitbucket seamlessly integrate Snyk security checks into the code review process. This ensures that potential vulnerabilities are identified and addressed before the code is merged into the main branch. Important features include:

Daily testing/monitoring of a specified branch (typically "development" branch), 
(optional) Pull Request/Merge Request checks against any branch of the repository.
(optional) Automated dependency upgrades and automated security fix upgrades using pull requests.

Advantages:

Visibility into repository security posture
Automatic Scan on code change
Immediate feedback on issues for the developer
Onboarding of repositories can be configured using the UI
Supports Cloud Repositories on the Team plan

For more details, see Git repositories (SCMs).

If you have a non-cloud facing/or your own instance of a git SCM:

Consider deploying a Snyk Broker for Snyk to communicate with your repositories, which would also require a Snyk Enterprise Plan. 
Enterprise customers can enable and manage Snyk Broker via API. 

Paid services can be engaged to assist in broker deployments.
