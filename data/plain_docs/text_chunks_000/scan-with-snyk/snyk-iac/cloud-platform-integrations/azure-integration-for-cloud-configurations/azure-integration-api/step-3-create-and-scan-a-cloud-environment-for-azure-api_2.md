The response is a JSON document containing details about your newly created Cloud Environment. For example:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "id": "e25a5ef1-1e96-1234-0000-1234abcd1234",
    "type": "environment",
    "attributes": {
      "name": "Example Azure Environment",
      "options": {
        "tenant_id": "00000000-0000-0000-1234-12345678abcd",
        "application_id": "12345678-1234-0000-0000-09876543dcba",
        "subscription_id": "abcd1234-abcd-1234-0000-000000000000"
      },
      "native_id": "abcd1234-abcd-1234-0000-000000000000",
      "properties": {
        "subscription_id": "abcd1234-abcd-1234-0000-000000000000",
        "subscription_name": "Example User"
      },
      "kind": "azure",
      "revision": 1,
      "created_at": "2023-02-06T06:34:05Z",
      "status": "in_progress",
      "updated_at": "2023-02-06T06:34:05Z"
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

To check if your scan is finished, see Check to see if the scan is finished.
To manually re-scan an environment, see Scan a Cloud Environment.
