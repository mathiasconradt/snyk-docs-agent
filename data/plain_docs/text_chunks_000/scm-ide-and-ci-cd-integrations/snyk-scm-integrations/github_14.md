Snyk lets you designate a specific GitHub account to open fix and upgrade pull requests.

The configured account is only used for opening PRs. All other operations are still performed on behalf of a randomly selected Snyk Organization member who has connected their GitHub accounts to Snyk.

To use this feature, follow these steps:

Go to the GitHub Integrations settings page in the Snyk Web UI using Organization Settings > Integrations > Source control > GitHub.
In the Open Snyk automatic PRs from a fixed GitHub account section, enter your GitHub personal access token.\
   You can generate this from your GitHub account.
Click Save to enable this feature.

Set an account to open Snyk PRs

Ensure that the GitHub account that you designate to open Snyk PRs has write-level permissions or higher for the repos you want to monitor with Snyk.
See GitHub and GitHub Enterprise permissions requirements for more information.
