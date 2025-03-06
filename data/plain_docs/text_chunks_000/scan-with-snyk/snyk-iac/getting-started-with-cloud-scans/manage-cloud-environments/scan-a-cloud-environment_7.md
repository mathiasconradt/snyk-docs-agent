To view all scans for an Organization, send an API request to the List scans endpoint in the following format:
curl -X GET \
'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/scans?version=2022-12-21~beta' \
-H 'Authorization: token YOUR-API-TOKEN'
Snyk returns a JSON document containing details about all scans, for example:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": [
    {
      "id": "a7fa2167-58a8-4ac5-9999-0987dcba6543",
      "type": "scan",
      "attributes": {
        "created_at": "2022-08-04T22:14:47Z",
        "error": "",
        "finished_at": "2022-08-04T22:16:31Z",
        "kind": "user_initiated",
        "options": {
          "role_arn": "arn:aws:iam::123456789012:role/snyk-cloud-role"
        },
        "revision": 2,
        "status": "success",
        "updated_at": "2022-08-04T22:16:31Z"
      },
      "relationships": {
        "environment": {
          "data": {
            "id": "3b7ccff9-8900-4e54-0000-1234abcd1234",
            "type": "environment"
          },
          "links": {
            "related": "/orgs/d70c1768-5675-0000-1234-abcd1234abcd/cloud/environments?id=3b7ccff9-8900-4e54-0000-1234abcd1234&version=2022-12-21~beta"
          }
        },
        "organization": {
          "data": {
            "id": "d70c1768-5675-0000-1234-abcd1234abcd",
            "type": "organization"
          },
          "links": {
            "related": "/orgs/d70c1768-5675-0000-1234-abcd1234abcd?version=2022-12-21~beta"
          }
        }
      }
    }
    <trimmed for length>
  ]
}
[^1]:
