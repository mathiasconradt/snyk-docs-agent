Send a request to the Snyk API in the format that follows to create the Cloud Environment:
curl -X POST \
'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/environments?version=2022-12-21~beta' \
-H 'Authorization: token YOUR-API-TOKEN' \
-H 'Content-Type:application/vnd.api+json' -d '{
  "data": {
    "type": "environments",
    "attributes": {
      "options": {
        "subscription_id": "YOUR-SUBSCRIPTION-ID",
        "tenant_id": "YOUR-TENANT-ID",
        "application_id": "YOUR-APPLICATION-ID"
      },
      "kind": "azure",
      "name": "OPTIONAL-NAME"
    }
  }
}'

The preceding example is curl, but you can use any API client, such as Postman or HTTPie.
