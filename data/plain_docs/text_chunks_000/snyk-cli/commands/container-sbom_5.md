Specify the <ORG_ID> (name or UUID) to run Snyk commands tied to a specific Snyk Organization. The <ORG_ID> influences some features availability and private test limits.
Use this option when your default Organization does not have API entitlement.
If this option is omitted, the default Organization for your account will be used.
This is the <ORG_ID> that is the current preferred Organization in your Account settings 
Set a default to ensure all newly tested projects are tested under your default Organization. If you need to override the default, use the --org=<ORG_ID> option.
If you have multiple organizations, you can set a default from the CLI using:
$ snyk config set org=<ORG_ID>
You can also use --org=<orgslugname>. The ORG_ID works in both the CLI and the API. The Organization slug name works in the CLI, but not in the API.
For more information, see the article How to select the Organization to use in the CLI
