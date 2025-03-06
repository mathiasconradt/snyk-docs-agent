| curl --location --request POST 'https://api.snyk.io/rest/tenants/TENANT_ID/brokers/installs/INSTALL_ID/deployments/DEPLOYMENT_ID/credentials?version=2024-02-08~experimental' \
--header 'Content-Type: application/vnd.api+json' \
--header 'Authorization: token YOUR_SNYK_TOKEN' \
--data-raw '{
    "data": {
        "type": "deployment_credential",
        "attributes": [{
            "comment": "This is github token service account XYZ (example)",
            "environment_variable_name": "MY_GITHUB_TOKEN",
            "type": "github"
        }]
    }
}'
 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
This returns the credential reference id (data. id), for example:
| {
    ...
    "data": {
        "id": "12345678-1234-1234-1234-123456789012",
        "type": "deployment_credential",
        "attributes": {
            "comment": "test cred",
            "deployment_id": "12345678-1234-1234-1234-123456789012",
            "environment_variable_name": "MY_GITHUB_TOKEN",
            "type": "github"
        }
    },
    ...
}
 |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
You can create a maximum of ten credentials in one call by adding more objects in attributes. These objects can be of different types.
| ...
"attributes": [{
            "comment": "This is github token service account XYZ (example)",
            "environment_variable_name": "MY_GITHUB_TOKEN",
            "type": "github"
        },
        {
            "comment": "This is my other github token service account ABC (example)",
            "environment_variable_name": "MY_OTHER_GITHUB_TOKEN",
            "type": "github"
        }]
...
 |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
