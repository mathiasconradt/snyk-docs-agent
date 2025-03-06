Consider the following levels of usage and options:
Usage levels


To get commits for all workspaces and their repos in Bitbucket Cloud, provide the Bitbucket Cloud user and app password:
snyk-scm-contributors-count bitbucket-cloud --user USERNAME --password APP_PASSWORD
*   To get commits for some workspaces and their repos in Bitbucket Cloud, provide the Bitbucket Cloud user, Bitbucket Cloud app password, and a comma-separated list of workspaces:
snyk-scm-contributors-count bitbucket-cloud --user USERNAME --password APP_PASSWORD --workspaces Workspace1,Workspace2...
*   To get commits for a specific repo in Bitbucket Cloud, provide the Bitbucket Cloud user, Bitbucket Cloud app password, a workspace, and a repo name:
snyk-scm-contributors-count bitbucket-cloud --user USERNAME --password APP_PASSWORD --workspaces Workspace1 --repo Repo1
