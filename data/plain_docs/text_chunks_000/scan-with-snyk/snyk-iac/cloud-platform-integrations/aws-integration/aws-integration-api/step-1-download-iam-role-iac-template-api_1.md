To retrieve the IaC template using  the Snyk API endpoint Generate Clout Provider PermissionsI, you need the API token for an Organization-level service account with an Org Admin role.

In the Snyk Web UI, navigate to Settings (cog icon) > General > Organization ID and copy your Organization ID.
Send a request to the Snyk API in the follwoing format, replacing INPUT-TYPE with tf for Terraform or cf for CloudFormation:

curl -X POST \
'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/permissions?version=2022-12-21~beta' \
-H 'Authorization: token YOUR-API-TOKEN' \
-H 'Content-Type:application/vnd.api+json' -d '{
    "data": {
        "attributes": {
            "type": "INPUT-TYPE",
            "platform": "aws"
        },
        "type": "permissions"
    }
}'

The preceding example is curl, but you can use any API client, such as Postman or HTTPie.
