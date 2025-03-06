To get all the commits from Bitbucket Cloud regardless of the repos that are already monitored by Snyk, add the --skipSnykMonitoredRepos flag.\
    You might have repos in Bitbucket Cloud that are not monitored in Snyk; use this flag to skip checking for Snyk monitored repos and go directly to Bitbucket Cloud to fetch the commits.
snyk-scm-contributors-count bitbucket-cloud --user USERNAME --password APP_PASSWORD --skipSnykMonitoredRepos
*   To exclude some contributors from being counted in the commits , add an exclusion file with the emails to ignore (separated by a new line),and apply the --exclusionFilePath with the path to that file:
snyk-scm-contributors-count bitbucket-cloud --user USERNAME --password APP_PASSWORD --workspaces Workspace1,Workspace2 --exclusionFilePath PATH_TO_FILE
*   To set the output to json format: add the --json flag:
snyk-scm-contributors-count bitbucket-cloud --user USERNAME --password APP_PASSWORD --workspaces Workspace1 --repo Repo1 --json
*   To create an import file for your unmonitored repos, add the --importConfDir flag with a valid (writable) path to a folder in which the import files will be stored, and add the --importFileRepoType flag (optional) with the repo types to add to the file (all/private/public, defaults to all). Note that these flags can not be set with the --repo flag.
snyk-scm-contributors-count bitbucket-cloud --user USERNAME --password APP_PASSWORD --importConfDir ValidPathToFolder --importFileRepoType private/public/all
For more information about these flags, refer to this Creating and using the import page.
*   To run in debug mode for verbose output, prefix with DEBUG=snyk*:
DEBUG=snyk* snyk-scm-contributors-count bitbucket-cloud --user USERNAME --password APP_PASSWORD --workspaces Workspace1 --repo Repo1 --exclusionFilePath PATH_TO_FILE --skipSnykMonitoredRepos --json
.
