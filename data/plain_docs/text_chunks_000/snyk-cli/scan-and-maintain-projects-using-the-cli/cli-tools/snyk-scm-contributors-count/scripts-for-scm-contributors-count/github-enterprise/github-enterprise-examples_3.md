To map all the orgs in GitHub Enterprise and not just the ones you have operate rights to, add the --fetchAllOrgs flag:

snyk-scm-contributors-count github-enterprise --token TOKEN --url HOST_URL --fetchAllOrgs


To exclude some contributors from being counted in the commits, add an exclusion file with the emails to ignore(separated by a new line) and apply the --exclusionFilePath with the path to that file:
snyk-scm-contributors-count github-enterprise --token TOKEN --url HOST_URL --orgs ORG_ONE,ORG_TWO --exclusionFilePath PATH_TO_FILE
*   To set the output to json format, dd the --json flag:
snyk-scm-contributors-count github-enterprise --token TOKEN --url HOST_URL --json
* To run in debug mode for verbose output, prefix with DEBUG=snyk* :


DEBUG=snyk* snyk-scm-contributors-count github-enterprise --token TOKEN --url HOST_URL --orgs ORG --repo REPO --exclusionFilePath PATH_TO_FILE --json
