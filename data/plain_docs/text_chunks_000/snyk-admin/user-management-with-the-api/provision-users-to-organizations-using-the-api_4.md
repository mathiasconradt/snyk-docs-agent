The endpont List pending user provisions returns pending provisioned users in the response.
GET https://api.snyk.io/v1/org/orgId/provision
Response model:
[
....
{
"email": "test@example.com",
"rolePublicId": "",
"role": "ADMIN",
"created": Date
},
....
]
