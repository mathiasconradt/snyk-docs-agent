--interactive
Use the snyk apps create command in interactive mode.
--org=<ORG_ID>
Specify the <ORG_ID> under which to create the Snyk App. Required for the create command.
--name=<SNYK_APP_NAME>
The name to be displayed to the end-user when the user authorizes the App. Required for the create command.
--redirect-uris=<REDIRECT_URIS>
A comma-separated list of redirect URIs. This forms a list of allowed redirect URIs to call back after authentication. Required for the create command.
--scopes=<SCOPES>
A comma-separated list of scopes required by your Snyk App. This forms a list of scopes that your app is allowed to request during authorization. Required for the create command.
--context=<CONTEXT>
The context your Snyk App will use when installed.
Can be either tenant or user. The default is tenant if context is not specified.
A Snyk App that has the tenant context will act as a bot user so it is not tied to any individual user and thus will persist even if the installing user leaves the Snyk Organization. In contrast, a Snyk App that has the user context will perform actions as the installing user. Specify the user context only if your Snyk App is performing operations that are specific to individual users. If there is any doubt, use tenant.
