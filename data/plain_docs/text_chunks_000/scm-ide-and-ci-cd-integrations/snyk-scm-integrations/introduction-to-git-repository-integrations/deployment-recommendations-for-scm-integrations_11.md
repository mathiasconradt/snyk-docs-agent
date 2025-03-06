Snyk scans your Projects on either a daily or a weekly basis. When new vulnerabilities are found, Snyk emails you and opens automated PRs with fixes for the repositories.
To configure the automatic fix PR settings for all Projects in an Organization, select the relevant Organization and navigate to Organization Settings > Integrations > Edit Settings.
Automatic fix pull request settings

Settings can also be configured per Project by selecting the specific Project in your Organization and navigating to the Settings tab. For more information, see View and edit Project settings.

Snyk recommends that you exclude patches from the auto fix PRs if your developers are not familiar with how to use and execute them.
Ask your developers to consider the merge advice label that appears on the auto fix PRs.

Snyk auto fix PRs are generated only for new issues.

If your SCM is GitHub and you are not using Snyk Broker, then by default, Snyk rotates every Org user's credentials to open the auto fix PRs. You can change this if needed and set the user credentials to open the auto fix PRs. See Opening fix and upgrade pull requests from a fixed GitHub account for details.
