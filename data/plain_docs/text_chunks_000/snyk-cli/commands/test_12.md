Specify the <ORG_ID> to run Snyk commands tied to a specific Snyk Organization. The <ORG_ID> influences some features availability and private test limits.
If you have multiple Organizations, you can set a default from the CLI using:
$ snyk config set org=<ORG_ID>
Set a default to ensure all newly tested projects are tested under your default Organization. If you need to override the default, use the --org=<ORG_ID> option.
Default: <ORG_ID> that is the current preferred Organization in your Account settings
You can also use --org=<orgslugname>. The ORG_ID works in both the CLI and the API. The Organization slug name works in the CLI, but not in the API.
orgslugname must match the slug name as displayed in the URL of your org in the Snyk UI: https://app.snyk.io/org/[orgslugname]. The orgname does not work.
For more information see the article How to select the Organization to use in the CLI
