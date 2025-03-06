description: The list of options and some examples for Azure
The following options are available for the snyk-scm-contributors-count azure devops command:
--version                 Show version number                        [boolean]
  --help                    Show help                                  [boolean]
  --token                   Azure DevOps token                         [required]
  --org                     Your Org name in Azure DevOps, for example, https://dev.azure.com/           [required]
  --projectKeys             [Optional] Azure DevOps project key/name to count
                            contributors for
  --repo                    [Optional] Specific repo to count only for
  --exclusionFilePath       [Optional] Exclusion list filepath
  --json                    [Optional] JSON output, required when using the "consolidateResults" command
  --skipSnykMonitoredRepos  [Optional] Skip Snyk monitored repos and count contributors for all repos
  --importConfDir           [Optional] Generate an import file with the unmonitored repos: A path to a valid folder for the generated import files
  --importFileRepoType      [Optional] To be used with the importConfDir flag: Specify the type of repos to be added to the import file. Options: all/private/public. Default: all
