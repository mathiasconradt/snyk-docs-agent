data.attributes.options.service_account_email is required. You can choose to specify the Project ID explicitly with a data.attributes.options.project_id field, but it cannot be different from the current ProjectProject ID.
curl -X PATCH \
'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/environments/YOUR-ENVIRONMENT-ID?version=2022-12-21~beta' \
-H 'Authorization: token YOUR-API-TOKEN' \
-H "Content-Type:application/vnd.api+json"  -d '{
  "data": {
    "attributes": {
      "options": {
        "service_account_email": "YOUR-NEW-SERVICE-ACCOUNT-EMAIL"
      }
    },
    "type": "resource"
  }
}'
