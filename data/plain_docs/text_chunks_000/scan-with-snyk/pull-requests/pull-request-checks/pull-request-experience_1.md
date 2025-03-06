Snyk PR Checks must be enabled. For more information, see Configure Pull Request Checks.
For the GitHub integration, a specific GitHub account needs to be set to open fix and upgrade PRs. The Personal Access Token (PAT) configured in this way is required by the Pull Request Experience to provide a consistent comment experience. See Opening fix and upgrade pull requests from a fixed GitHub account for more information.
For inline comments, the Code analysis PR checks setting needs to be enabled at the integration level. In the Snyk Web UI, under Settings > Integrations > Edit settings,  verify that the option is enabled under Pull request status checks > Code analysis. If "Code analysis" is not visible, please reach out to your Snyk account team to enable Snyk Code for your account. If it is already enabled, check under Settings > Snyk Code to ensure it is turned on.

Code analysis feature for Pull Request status checks
