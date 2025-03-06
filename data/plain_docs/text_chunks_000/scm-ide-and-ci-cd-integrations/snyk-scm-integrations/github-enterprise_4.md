Follow these steps to connect Snyk with your GitHub repositories:

Create a dedicated service account in GitHub Enterprise with a write level or higher scope for the repos you want to monitor with Snyk permissions.\
   See Types of GitHub accounts and Required access scopes for the GitHub integration for details.\
   Note that to create webhooks, which is required for PR checks, the repo permission for the account must be Admin. GitHub custom roles are not supported. 
Generate a personal access token for that account.
Authorize your personal access token and enable SSO.
Import your GitHub repositories.
