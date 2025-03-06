description: The list of options and some examples for GitLab
The following options are available for the snyk-scm-contributors-count gitlab command:
--version                 Show version number                        [boolean]
  --help                    Show help                                  [boolean]
  --token                   GitLab token                               [required]
  --url                     [Optional] Your GitLab host custom URL. If no host was provided
                            it will default to https://gitlab.com/
  --groups                  [Optional] Your Gitlab groups names to count contributors for 
                            *note* for sub-level groups, provide the lowest level group name                                             
  --project                 [Optional] Your GitLab project path with namespaces to count contributors for
  --exclusionFilePath       [Optional] Exclusion list filepath
  --json                    [Optional] JSON output, required when using the "consolidateResults" command
