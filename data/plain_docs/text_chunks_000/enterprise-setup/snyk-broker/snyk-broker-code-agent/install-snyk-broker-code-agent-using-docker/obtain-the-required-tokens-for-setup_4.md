To obtain your SCM token, follow the instructions provided by the SCM you want to integrate with the Snyk Broker, and create a token with the required permissions.
The following SCM tokens are required for the different SCMs:
GitHub and GitHub Enterprise:
GITHUB_TOKEN= - a GitHub personal access token. Scopes: repo, read:org and admin:repo_hook.
See GitHub documentation - Creating a personal access token__
Gitlab:
GITLAB_TOKEN= - a GitLab personal access token. Gitlab account with Maintainer permissions. Scope: api.
See Gitlab documentation - Personal access tokens__
Azure Repos:
AZURE_REPOS_TOKEN= - an Azure Repos personal access token. Scopes: Custom defined, ** Code: ** Read & write.
See Azure Repos documentation - Use personal access tokens__
Bitbucket Server/Data Center:
BITBUCKET_USERNAME=, BITBUCKET_PASSWORD= – the Bitbucket Server username and password or a Bitbucket Server personal access token. Scope: Repository admin.
See Bitbucket Server documentation - Personal access tokens\
