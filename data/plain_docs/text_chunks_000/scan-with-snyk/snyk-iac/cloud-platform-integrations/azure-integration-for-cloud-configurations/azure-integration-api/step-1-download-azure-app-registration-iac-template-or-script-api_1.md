To retrieve the IaC template from the Snyk API, you need the API token for a Snyk Organization-level service account with an Org Admin role.
You also need the subscription and tenant IDs of the Azure subscription you are onboarding. You can find them using the method described in the Azure documentation.

In the Snyk Web UI, navigate to Settings (cog icon) > General > Organization ID and copy your Organization ID.
Send a request to the Snyk API in the following format, replacing INPUT-TYPE with tf for Terraform or bash for Bash:

curl -X POST \
'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/permissions?version=2022-12-21~beta' \
-H 'Authorization: token YOUR-API-TOKEN' \
-H 'Content-Type:application/vnd.api+json' -d '{
    "data": {
        "attributes": {
            "options": {
              "subscription_id": "YOUR-SUBSCRIPTION-ID",
              "tenant_id": "YOUR-TENANT-ID"
            },
            "type": "INPUT-TYPE",
            "platform": "azure"
        },
        "type": "permissions"
    }
}'

The preceding example is curl, but you can use any API client, such as Postman or HTTPie.

If you plan to use the Azure Cloud Shell to execute the Bash script instead of running the Azure CLI locally, execute the curl command above in the Cloud Shell.
