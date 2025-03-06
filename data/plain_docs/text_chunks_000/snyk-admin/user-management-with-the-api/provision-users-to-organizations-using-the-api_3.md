You can use the endpoint Provision a user to the organizaton to provision a user to the specified Organization with a role. When a user first logs into Snyk, the user is automatically assigned the permissions as defined in the role.
POST https://api.snyk.io/v1/org/orgId/provision
Request model:
{
"email": "test@example.com",
"rolePublicId": "",
"role": "ADMIN"
}
Response model:
{
"email": "test@example.com",
"rolePublicId": "",
"role": "ADMIN",
"created": Date
}

Enterprise plan users can define their own customized member roles and can use therolePublicId for assignment.\
\
You can use either role or rolePublicId but not both in the same call.
