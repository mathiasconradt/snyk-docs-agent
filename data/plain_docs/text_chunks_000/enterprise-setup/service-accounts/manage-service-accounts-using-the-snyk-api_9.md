Request: POST https://api.snyk.io/rest/orgs//service_accounts
API endpoint: Create a service account for an organization
This call creates a new service account. You pass a role_id in the JSON-formatted body of the request, which defines the permissions a service account can use. This role id can be found using the endpoint List all roles in a group. Roles can be re-used for multiple service accounts.
