description: The list of options and some examples
The following options are available for the snyk-scm-contributors-count github-enterprise command:
--version                 Show version number                        [boolean]
  --help                    Show help                                  [boolean]
  --token                   Github Enterprise token                    [required]
  --url                     Your GitHub host custom URL, 
                            for example, https://ghe.prod.company.org/ [required]
  --orgs                    [Optional] A list of GitHub Enterprise organizations, separeted by comma, 
                            to fetch and count contributors for their repositories              
  --repo                    [Optional] Specific repo to count only for
  --fetchAllOrgs            [Optional] When enabled, will fetch all orgs that the token has access to
                            rather than fetching only the orgs your authorized to operate in.
  --exclusionFilePath       [Optional] Exclusion list filepath
  --json                    [Optional] JSON output, required when using the "consolidateResults" command
