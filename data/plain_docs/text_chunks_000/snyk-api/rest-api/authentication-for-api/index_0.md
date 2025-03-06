To use the Snyk API, you must be an Enterprise plan customer and have a token from Snyk.
Enterprise users have access to a personal token under their profile and to service account tokens. The personal API token is associated with your Snyk Account and not with a specific Organization. Service accounts are associated with an Organization or a Group. For more information, see Service accounts.

Enterprise users should use a service account to authenticate for any kind of automation. This includes, but is not limited to, CI/CD scanning with the CLI or build system plugins and any automation, including automation with the API.
Enterprise users should use the personal token under their user profile for:
Running the CLI locally on their machine; for details, see Authenticate to use the CLI.
Authenticating with the IDE manually
Running API calls one time, for example, to test something

Note that for free and team plan users, the personal token does not have access to the API and may be used for authenticating to IDE, CLI, and CI/CD integrations only. For details, see Obtain and use your API token.
For additional information, see Snyk API token permissions users can control.
