To set up the GitLab integration with Snyk, create a GitLab access token and enter this into the Snyk application.
Typically, the first user in a Snyk Organization, a Snyk admin and GitLab Owner or Maintainer, sets up an integration with a GitLab Personal Access Token or Group Access Token. This token is then authenticated with GitLab, enabling access by Snyk to the repositories in that GitLab account.

A GitLab Personal Access Token is used to perform actions on and manage personal GitLab projects individually. These differ from Group Access Tokens as they are attached to a user rather than a GitLab group. For Snyk Essentials to show all repositories from GitLab, the user generating the PAT should be part of the GitLab group where their GitLab permissions can be a minimum of Guest.
A GitLab Group Access Token is used to perform actions for and manage more than one GitLab project within a GitLab group. The Group Access Token also grants access to all GitLab projects in a GitLab group or subgroup without contributing to GitLab's licensed user count.

To trigger the creation of fix pull requests manually, all users in a Snyk Organization can add and work with any related Snyk Projects, while the merge requests themselves will appear in GitLab as having been opened by the Snyk admin who set up the configuration.

Group Access Tokens can only be created by a GitLab Owner using a GitLab Premium or Ultimate account tier. This can be done in GitLab's web UI, their Rails console, or through the GitLab API.
