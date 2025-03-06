To check the status of a scan, retrieve the details of the environment being scanned. Send a request to the /cloud/environments endpoint in the following format:
curl -X GET \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/environments?id=YOUR-ENVIRONMENT-ID&version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-API-TOKEN'
Snyk returns a JSON document containing environment details. Look for the data.attributes.status value to find the scan status. In the shortened example that follows, the status is success:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": [
    {
      "id": "3b7ccff9-8900-4e54-0000-1234abcd1234",
      "type": "environment",
      "attributes": {
        "status": "success",
        <trimmed for length>
      }
    }
  ]
}
Scan status values are as follows:

queued: Scan is about to start
in_progress: Scan is in progress
success: Scan is completed
error: Scan errored; wait a moment and try scanning again
