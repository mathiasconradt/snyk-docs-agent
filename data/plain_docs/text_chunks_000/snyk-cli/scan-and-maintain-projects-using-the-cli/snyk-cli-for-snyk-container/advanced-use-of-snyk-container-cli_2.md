When Docker is installed, the Snyk CLI container commands use any pre-configured registry authentication. If you are not using Docker, you can pass the credentials on the command line in one of the following ways:

Use the following environment variables: SNYK_REGISTRY_USERNAME and SNYK_REGISTRY_PASSWORD
Pass the username and password:

snyk container test <repository>:<tag> --username= --password=

When both are passed, the options take precedence over the environment variables.
