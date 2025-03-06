You can filter the list of environments using query parameters to make it easier to find a particular environment. For example, you can add kind=google to the API request to return only Google Cloud environments:
curl -X GET \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/environments?kind=google&version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-API-TOKEN'
