For information about token permissions in a brokered integration, see GitHub - prerequisites and steps to install and configure Broker and Integrated SCM tokens for Snyk Broker.

The Snyk GitHub Enterprise integration is bound to a single user, preferably a GitHub service account. The level of access for the integration is defined by the combination of the user's permissions in GitHub and the access defined for the Personal Access Token (PAT) on that user's account. If the PAT is defined with more permission than the user's GitHub account, the integration will not be able to use that permission.
The following table details the access scopes required in GitHub and GitHub Enterprise for Personal Access Tokens (PAT) and the scopes required for Snyk to perform the required operations on monitored repositories, such as reading manifest files on a frequent basis and opening fix or upgrade PRs. GitHub custom roles are not supported.
Action and purposePAT scopesRepository scopesDaily/weekly tests:Read manifest files in private repositories.repo (all)≥ readManual fix pull requests:Create fix PRs in monitored repositories.repo (all)Automatic fix and upgrade pull requests:Create fix or upgrade PRs in monitored repositories.repo (all)≥ writeSnyk tests on pull requests:Send PR status checks whenever a new PR is created, or an existing PR is updated.repo (all)≥ writeInitial configuration of Snyk tests on pull requests:Used to add SCM webhooks to the imported repoadmin:repo_hooks (read & write)adminImport new Projects to Snyk:Present a list of all the available repos in the GitHub org in the Add Projects screen.admin:read:orgrepo (all)
A fine-grained PAT requires additional repository access scopes:

Administration: Read-only
Commit Status: Read and write
Content: Read and write
Metadata: Read-only
Pull requests: Read and write
Webhooks: Read and write
Members access: Read-only (Organization access scope)

The Administration: Read-only permission on the PAT is crucial for Snyk to identify and list the user's accessible GitHub organizations, a prerequisite for importing a new Project.
Snyk uses PRs to tell GitHub Enterprise that a merge is to occur. To do this, change content is pushed into a branch, which requires the content: write scope. A separate call is then made to create the fix PR, which requires the pull request: write scope. GitHub Enterprise is then instructed to create a PR, merging the change branch into the default branch.
Snyk uses SCM webhooks to:

Track the state of Snyk pull requests when PRs are created, updated triggered, merged, and so on.
Send push events to trigger PR checks.
