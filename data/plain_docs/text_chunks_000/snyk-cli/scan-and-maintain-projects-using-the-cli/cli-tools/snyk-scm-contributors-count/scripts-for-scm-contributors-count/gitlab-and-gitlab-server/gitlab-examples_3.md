To exclude some contributors from being counted in the commits, add an exclusion file with the emails to ignore(separated by a new line) and apply the --exclusionFilePath with the path to that file:

snyk-scm-contributors-count gitlab --token TOKEN --projectKeys ID1,ID2,Path1/Namespace1 --exclusionFilePath PATH_TO_FILE


To set the output to json format, add the --json flag:
snyk-scm-contributors-count gitlab --token TOKEN --json
* To run in debug mode for verbose output, prefix withDEBUG=snyk*:


DEBUG=snyk* snyk-scm-contributors-count gitlab --token TOKEN --url URL --exclusionFilePath PATH_TO_FILE --json
