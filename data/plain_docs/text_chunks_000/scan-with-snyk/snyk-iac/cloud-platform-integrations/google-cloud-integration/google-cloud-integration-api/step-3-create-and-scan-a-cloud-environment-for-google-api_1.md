Send a request to the Snyk API in the format below to create the Cloud Environment:
curl -X POST \
'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/environments?version=2022-12-21~beta' \
-H 'Authorization: token YOUR-API-TOKEN' \
-H 'Content-Type:application/vnd.api+json' -d '{
  "data": {
    "type": "environments",
    "attributes": {
      "options": {
        "identity_provider": "YOUR-IDENTITY-PPROVIDER-URL"
        "service_account_email": "YOUR-SERVICE-ACCOUNT-EMAIL",
        "project_id": "YOUR-PROJECT-ID"
      },
      "kind": "google"
    }
  }
}'

The preceding example is curl, but you can use any API client, such as Postman or HTTPie.
