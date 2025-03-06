You can update the name of your App or the list of redirect URIs you have set.
To update an App, send a PATCH request to the apps/creations endpoint:
https://api.snyk.io/rest/orgs//apps/creations?version=
The app_id path parameter is the id in the response to a GET request to the apps/creations endpoint.
For details, see the endpointUpdate app creation attributes such as name, redirect URLs, and access token time to live using the App ID.
