To get all the commits from Azure regardless of the repos that are already monitored by Snyk, add the --skipSnykMonitoredRepos flag.
You might have repos in Azure that are not monitored in Snyk; use this flag to skip checking for Snyk monitored repos and go directly to Azure to fetch the commits.
snyk-scm-contributors-count azure-devops --token AZURE-TOKEN --org AZURE-ORG --skipSnykMonitoredRepos
*   To exclude some contributors from being counted in the commits, add an exclusion file with the emails to ignore (separated by a new line) and apply the --exclusionFilePath with the path to that file:
snyk-scm-contributors-count azure-devops --token AZURE-TOKEN --org AZURE-ORG --projectKeys Key1,Key2 --exclusionFilePath PATH_TO_FILE
*   To set the output to json format: add the --json flag:
snyk-scm-contributors-count azure-devops --token AZURE-TOKEN --org AZURE-ORG --projectKeys Key1 --repo Repo1 --json
*   To create an import file for your unmonitored repos: add the --importConfDir flag with a valid (writable) path to a folder in which the import files will be stored and add the --importFileRepoType flag (optional) with the repo types to add to the file (all/private/public, defaults to all). Note that these flags can not be set with the --repo flag.
snyk-scm-contributors-count azure-devops --token AZURE-TOKEN --org AZURE-ORG --importConfDir ValidPathToWritableFolder --importFileRepoType private/public/all
For more details about these flags, refer to the Creating and using the import page.
*   To run in debug mode for verbose output, prefix the command withDEBUG=snyk*:
DEBUG=snyk* snyk-scm-contributors-count azure-devops --token AZURE-TOKEN --org AZURE-ORG --projectKeys Key1 --repo Repo1 --exclusionFilePath PATH_TO_FILE --skipSnykMonitoredRepos --json
