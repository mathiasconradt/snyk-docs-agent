To view details for a single resource through the Snyk API, send a request in the following format. 
curl -X GET \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/resources?id=YOUR-RESOURCE-ID&version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-API-TOKEN'
Snyk returns a JSON document containing information about the selected resource. The information is the same as shown in Understand the API response.
