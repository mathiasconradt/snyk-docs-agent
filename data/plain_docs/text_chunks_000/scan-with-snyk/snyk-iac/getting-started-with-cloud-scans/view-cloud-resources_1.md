To list all resources in an Organization, send a request to the /cloud/resources endpoint in the following format:
curl -X GET \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/resources?version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-API-TOKEN'
