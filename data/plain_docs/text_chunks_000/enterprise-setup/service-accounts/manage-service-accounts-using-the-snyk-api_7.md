Request: POST https://api.snyk.io/rest/groups//service_accounts//secrets
API endpoint: Manage a group service account’s client secret
This call allows you to manage the client secret for oauth_client_secret service accounts. You can perform the following operations:

create - generate a new client secret. A service account can have a maximum of two active secrets at a time.
delete - delete an existing client secret. This requires putting client_secret in the request body. Deleting an existing client secret would render it invalid. A service account must have at least one active secret; calling delete with your last secret will fail.
replace - simultaneously delete the existing client secret and generate a new secret. This option is recommended if your client_secret is compromised.
