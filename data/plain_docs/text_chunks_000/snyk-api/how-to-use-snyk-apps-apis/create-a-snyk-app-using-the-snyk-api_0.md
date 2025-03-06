When you have an API token and orgId, you can use the Snyk API to create your Snyk App by sending a POST request to the endpoint Create a new Snyk App for an organization:
https://api.snyk.io/rest/orgs//apps/creations?version=
Example CURL request to create a Snyk App:
curl -XPOST -H"Content-Type: application/vnd.api+json" \
 -H"Authorization: token <REPLACE_WITH_API_TOKEN>" \
 -d ', "type": "app"}}' \
 "https://api.snyk.io/rest/orgs/<REPLACE_WITH_YOUR_ORGID>/apps/creations?version=2024-10-11"
The request body should contain the details for your new App, including the name, redirectURIs, and scopes.
The response includes details necessary to complete the integration: clientId and clientSecret. Use these values with Snyk API endpoints within your App; consider storing them as part of the configuration of your App.

Never share the clientSecret publicly, as it is used to authenticate your App. This is the only time you will see the clientSecret, so keep it secure and private. If you lose it or if the secret is leaked, you can rotate your App's clientSecret.
