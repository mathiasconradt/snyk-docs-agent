To retrieve the IaC template from the Snyk API, you need the API token for a Snyk Organization-level service account with an Org Admin role.

In the Snyk Web UI, navigate to Settings (cog icon) > General > Organization ID and copy your Organization ID.
Send a request to the Snyk API in the following format:

curl -X POST \
'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/permissions?version=2022-12-21~beta' \
-H 'Authorization: token YOUR-API-TOKEN' \
-H 'Content-Type:application/vnd.api+json' -d '{
    "data": {
        "attributes": {
            "type": "tf",
            "platform": "google"
        },
        "type": "permissions"
    }
}'

The preceding example is curl, but you can use any API client, such as Postman or HTTPie.

The response is a JSON document like the one that follows (trimmed for length):
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "id": "00000000-0000-0000-0000-000000000000",
    "type": "permissions",
    "attributes": {
      "data": "variable \"project_id\"<...>",
      "type": "tf"
    }
  }
}
