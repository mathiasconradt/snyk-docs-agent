First, find the ID of the Cloud environment you want to update. Send a request to the /cloud/environments endpoint in the following format:
curl -X GET \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/environments?version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-API-TOKEN'
In the output, look for the data.id property. In the shortened example that follows, the ID is 3b7ccff9-8900-4e54-0000-1234abcd1234:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "id": "3b7ccff9-8900-4e54-0000-1234abcd1234",
    <trimmed for length>
  }
}
