To exclude some contributors from being counted in the commits , add an exclusion file with the emails to ignore(separated by a new line) and apply the --exclusionFilePath with the path to that file:

snyk-scm-contributors-count github --token TOKEN --orgs ORG_ONE,ORG_TWO --exclusionFilePath PATH_TO_FILE


To set the output to json format, dd the --json flag:
snyk-scm-contributors-count github --token TOKEN --json
* To run in debug mode for verbose output, prefix with DEBUG=snyk*:


DEBUG=snyk* snyk-scm-contributors-count github --token TOKEN --orgs ORG --repo REPO --exclusionFilePath PATH_TO_FILE --json
