Free and Team plan users are more likely to use this method in a CI/CD pipeline than to use OAuth 2.0. Enterprise plan customers are advised to use a service account in a CI/CD pipeline. For details about when to use an API token and when to use a service account token, see Authentication for API.
All CLI test commands can automatically recognize the environment variable SNYK_TOKEN and use it for authentication. For details, see Environment variables for Snyk CLI.
To use API token-based authentication, set the SNYK_TOKEN environment variable and run the test command, for example:\
SNYK_TOKEN=<SNYK_API_TOKEN> snyk test
Alternatively, you can export the environment variable to make it available for future test commands:\
export SNYK_TOKEN=<SNYK_API_TOKEN>\
snyk test
You can also store the Snyk API token locally for later use by running the following CLI command:\
snyk auth <SNYK_API_TOKEN>
All subsequent test calls will be authenticated automatically. For more information, see the Auth command help.
