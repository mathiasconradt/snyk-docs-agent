The response is a JSON document containing details about your newly created Cloud Environment; for example:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "id": "3b7ccff9-8900-4e54-0000-1234abcd1234",
    "type": "environment",
    "attributes": {
      "name": "Example AWS Environment",
      "options": {
        "role_arn": "arn:aws:iam::123412341234:role/snyk-cloud-role"
      },
      "native_id": "123412341234",
      "properties": {
        "account_id": "123412341234",
        "account_alias": "example"
      },
      "kind": "aws",
      "revision": 1,
      "created_at": "2022-07-31T00:50:49Z",
      "status": "in_progress",
      "updated_at": "2022-07-31T00:50:49Z"
    },
    "relationships": {
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
Snyk automatically triggers a scan when an environment is created.

The data.attributes.status field in the JSON output is set to in_progress. This means that Snyk has created your environment and has started scanning it.
