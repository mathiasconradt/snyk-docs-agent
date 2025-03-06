Authentication method: Specify whether to authenticate with OAuth2 or with an API token. OAuth2is the default
Custom Endpoint: Specify the Snyk API endpoint for a custom multi-tenant or single-tenant setup. If you are using https://api.snyk.io, no configuration is required. For details, see the list of IDE URLs.\
  Multi-tenant users who do not belong to the default region will be automatically redirected to the correct domain for the email with which the user authenticated. The redirect will not occur for cases where the users are expected to use a custom URL, such as companies with single-tenant setups.

Organization: Sets the Organization to run snyk test against, similar to the --org= option in the CLI. Snyk recommends using the ORG_ID. If you specify an Organization slug name, the value must match the URL slug as displayed in the URL of your Organization in the Snyk UI: https://app.snyk.io/org/[orgslugname].
If this is not specified, the preferred Organization, as defined in your web account settings, is used to run tests.
* Send error reports to Snyk: Help Snyk to improve the plugin's stability by analyzing such reports
