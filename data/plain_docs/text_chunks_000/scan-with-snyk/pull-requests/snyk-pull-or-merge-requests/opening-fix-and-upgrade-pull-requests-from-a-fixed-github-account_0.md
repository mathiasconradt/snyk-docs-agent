You can set a specific GitHub account to open, fix, and upgrade PRs, rather than use a GitHub user account picked randomly by Snyk.

Other operations not performed by the UI, such as daily and weekly tests, are still performed by Snyk Organization members who have connected their GitHub accounts to Snyk, picked randomly.

To use this feature:

In Snyk Web UI, navigate to Settings, then Integrations, Source control, then GitHub, and click Edit Settings.
Enable the toggle button under the Open fix and upgrade pull requests from a fixed GitHub account setting.
Follow the in-page instructions for creating a personal access token in GitHub.
Provide the newly generated token to Snyk so it can be used to perform operations in GitHub, such as opening Fix PRs.


Ensure that the GitHub account for which the token is provided has write permissions or above to the repos you want to monitor with Snyk.

For more information about repository permission levels in GitHub, see GitHub integration.
