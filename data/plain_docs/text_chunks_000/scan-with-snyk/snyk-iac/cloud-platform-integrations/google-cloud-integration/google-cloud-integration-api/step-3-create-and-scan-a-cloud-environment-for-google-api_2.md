The response is a JSON document containing details about your newly created Cloud Environment, for example:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "id": "c61079b9-7260-4b2f-1234-abcd1234abcd",
    "type": "environment",
    "attributes": {
      "name": "my-project-demo",
      "options": {
        "project_id": "my-project-demo",
        "service_account_email": "snyk-cloud-mt-us-abcd1234@my-project-demo.iam.gserviceaccount.com"
      },
      "native_id": "my-project-demo",
      "properties": {
        "project_id": "my-project-demo",
        "project_name": "my-project-demo",
        "project_number": "123456789012"
      },
      "kind": "google",
      "revision": 1,
      "created_at": "2022-10-13T20:45:19Z",
      "status": "in_progress",
      "updated_at": "2022-10-13T20:45:19Z"
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

To check to see if your scan is finished, see Check to see if the scan is finished.
To re-scan an environment, see Scan a Cloud environment.

It can take Google 60 seconds or more to create your service account. If you try to create an environment immediately after you create a service account and you receive a could not validate credentials error, wait at least 60 seconds and try again.
