Consider the following levels of usage and options:
Usage levels


To get commits for all projects and their repos in Bitbucket Server, provide the Bitbucket Server token and url:
snyk-scm-contributors-count bitbucket-server --token BITBUCKET-TOKEN --url BITBUCKET-URL
*   To get commits for some projects and their repos in Bitbucket Server, provide the Bitbucket Server token, Bitbucket Server url ,and the projects, separated by a comma:
snyk-scm-contributors-count bitbucket-server --token BITBUCKET-TOKEN --url BITBUCKET-URL --projectKeys Key1,Key2...
*   To get commits for a specific repo in Bitbucket Serve, provide your Bitbucket Server token, Bitbucket Server url, a project, and a repo name:
snyk-scm-contributors-count bitbucket-server --token BITBUCKET-TOKEN --url BITBUCKET-URL --projectKeys Key1 --repo Repo1
