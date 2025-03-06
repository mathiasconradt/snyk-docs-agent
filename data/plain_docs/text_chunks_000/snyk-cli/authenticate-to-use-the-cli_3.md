You can copy your personal API token from your General Account settings (under your username) in the Snyk Web UI, and then configure your CLI to use it locally.
All CLI test commands can automatically recognize the environment variable SNYK_TOKEN and use it for authentication. For details, see Environment variables for Snyk CLI.
To use API token-based authentication, set the SNYK_TOKEN environment variable and run the test command, for example:\
SNYK_TOKEN=<SNYK_API_TOKEN> snyk test
Alternatively, you can export the environment variable to make it available for future test commands:\
export SNYK_TOKEN=<SNYK_API_TOKEN>\
snyk test
This form of authentication is particularly useful for CI/CD pipelines. See How to authenticate to use the CLI in CI/CD pipelines.
You can also store the Snyk API token locally for later use by running the following CLI command:\
snyk auth <SNYK_API_TOKEN>
All subsequent test calls will be authenticated automatically.  For more information, see the Auth command help.
