Add DEBUG=snyk* to the beginning of the command, for example:
DEBUG=snyk* snyk-scm-contributors-count bitbucket-server --token BITBUCKET-TOKEN --url BITBUCKET-URL --projectKeys Key1 --repo Repo1 --exclusionFilePath PATH_TO_FILE --skipSnykMonitoredRepos --json
