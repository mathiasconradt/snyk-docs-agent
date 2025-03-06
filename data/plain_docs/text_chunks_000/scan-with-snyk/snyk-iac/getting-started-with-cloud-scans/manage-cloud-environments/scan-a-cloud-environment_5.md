Snyk returns a JSON document containing details about the new scan, for example:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "id": "a7fa2167-58a8-4ac5-9999-0987dcba6543",
    "type": "scan",
    "attributes": {
      "created": "2022-08-07T04:59:58.639423469Z",
      "updated": null,
      "finished": null,
      "revision": 2,
      "kind": "user_initiated",
      "status": "queued"
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
}
The following are some key attributes from the API response:

data.id: Scan ID
data.attributes.status: Scan status
