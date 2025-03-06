To delete an App from your Snyk Organization, send a DELETE request to the endpoint apps/creations:
https://api.snyk.io/rest/orgs//apps/creations/?version=
The app_id path parameter is the id in the response to a GET request to the apps/creations endpoint.
For details, see the endpoint Delete an app by its App ID.
Deleting an App revokes your App credentials and removes all of your App's installations. If you have active users, they will no longer be able to connect to Snyk through the App.
