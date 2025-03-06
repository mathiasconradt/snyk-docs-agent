To manually trigger a scan, send a request to the /cloud/scans endpoint in the following format:
curl -X POST \
'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/scans?version=2022-12-21~beta' \
-H 'Authorization: token YOUR-API-TOKEN' \
-H "Content-Type:application/vnd.api+json"  -d '{
  "data": {
    "relationships": {
      "environment": {
        "data": {
          "id": "YOUR-ENVIRONMENT-ID",
          "type": "environment"
        }
      }
    },
    "type": "resource"
  }
}'
This example uses curl, but you can use any API client, such as Postman or HTTPie.
