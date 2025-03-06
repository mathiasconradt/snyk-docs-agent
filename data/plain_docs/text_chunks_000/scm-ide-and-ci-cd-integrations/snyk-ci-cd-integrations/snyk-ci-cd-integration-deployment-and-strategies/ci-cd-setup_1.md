When you run Snyk in your CI/CD platform, you typically want to post the test results to Snyk for review and ongoing monitoring.
If you do not define a target Organization, Snyk uses the default Organization for your authentication token:

For user accounts, this is the user's preferred Organization, configurable in the user's settings.
For Organization service accounts, this is the Organization in which the account was created.

You can define the target Organization in the Snyk CLI by using the  --org CLI option and either the orgslugname or Organization ID:

You can define the target Organization using its orgslugname as displayed in the address bar of the browser in the Snyk UI.
Alternatively, you can define the target Organization using its ORG_ID on the Organization settings page.

Organization ID
For more information, see How to select the Organization to use in the CLI.
