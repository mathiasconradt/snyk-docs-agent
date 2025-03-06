Configure the Pull Request Experience for one or more integrations in your Snyk Organization, for which PR Checks are also enabled.

In the Snyk Organization you wish to activate and configure the Pull Request Experience for, navigate to Settings, Integrations and select Edit settings your connected source code manager to open the settings configuration.
Configure and save the following changes:
Enable issue summary comment: Enable this option to create an Issue Summary Comment on each pull request, which aggregates the PR Check results. If it is disabled, the entire Pull Request Experience is disabled.
Create comments for success cases: By default, an Issue Summary Comment is created even if no vulnerabilities are detected by the PR Check. Disable this option to stop creating Issue Summary Comments for non-failing PR Checks.
Enable inline comments: Enable inline comments to add a comment for each issue found by Snyk Code PR Check.

Configuration details for the GitHub integration
For the GitHub integration, configure opening fix and upgrade pull requests from a fixed GitHub account, by providing a Personal Access Token (PAT), which has write permissions or above to the repos monitored by Snyk. See Opening fix and upgrade pull requests from a fixed GitHub account for more information.
Configuration details for the GitHub integration
