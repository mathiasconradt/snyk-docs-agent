data.attributes.options.tenant_id and data.attributes.options.subscription_id are required and cannot be different from the current values.
curl -X PATCH \
'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/environments/YOUR-ENVIRONMENT-ID?version=2022-12-21~beta' \
-H 'Authorization: token YOUR-API-TOKEN' \
-H 'Content-Type:application/vnd.api+json' -d '{
  "data": {
    "attributes": {
      "name": "YOUR-NEW-ENVIRONMENT-NAME",
      "options": {
        "application_id": "YOUR-NEW-APPLICATION-ID",
        "tenant_id": "00000000-0000-0000-1234-12345678abcd",
        "subscription_id": "abcd1234-abcd-1234-0000-000000000000"
      }
    },
    "type": "resource"
  }
}'
