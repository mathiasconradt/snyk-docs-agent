Request: GET https://api.snyk.io/v1/org//members
Endpoint: List members
This call returns an array of all non-admin members of the Organization. Save the id of each user who should have a new role.
Service accounts are not returned by the List members endpoint. You must get the publicID of each service account from the Service Account Settings page:

In your Service Accounts Settings, select the name of the service account for which you want to get the publicID.
When the Edit account name window opens, copy the string at the end of the URL; this is the publicID of the service account.
