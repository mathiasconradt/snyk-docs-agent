SNYK_DISABLE_ANALYTICS=1
Specifying this variable disables all Snyk CLI analytics.
Configure the authentication method used to log in to the Snyk platform
SNYK_TOKEN
Specifying this variable allows you to override the token that may be available in your Snyk configuration settings (~/.config/configstore/snyk.json). Use SNYK_TOKEN in a CI/CD environment. After setting SNYK_TOKEN you can get started using the CLI.
For information on how to get your account token see Authenticate the CLI with your account. You can also use a service account to authenticate; for more information see Service accounts. For additional information, see Authentication for third-party tools.
SNYK_OAUTH_TOKEN=<OAuth token>
Using this variable specifies the OAuth token if required for verification.
