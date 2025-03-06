After the Visual Studio extension is installed, you can set the following options.
Account settings

Authentication method: Specify whether to authenticate with OAuth2 or with  a Snyk API token.  Snyk recommends using OAuth2, becuase it is more secure.
Token: Set the authentication token for Snyk.
Custom endpoint: Specify the Snyk API endpoint for a custom multi-tenant or single-tenant setup. If you are using https://api.snyk.io, no configuration is required. For details, see the list of IDE URLs.\
  Multi-tenant users who do not belong to the default region will be automatically redirected to the correct domain for the email with which the user authenticated. The redirect will not occur for cases where the users are expected to use a custom URL, such as companies with single-tenant setups.
Ignore unknown CA: Ignore unknown certificate authorities.
Organization: Specify the ORG_ID to run Snyk commands tied to a specific Organization. Snyk recommends using the ORG_ID. If you specify the ORG_NAME, that is, the Organization slug name, the value must match the URL slug as displayed in the URL of your Organization in the Snyk UI: https://app.snyk.io/org/[orgslugname]. If not specified, the Preferred Organization (as defined in your account settings) is used to run tests.
