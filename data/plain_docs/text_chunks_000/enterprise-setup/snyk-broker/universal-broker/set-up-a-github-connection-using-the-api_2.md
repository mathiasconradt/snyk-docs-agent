Use the following call to create your deployment.
curl --location --request POST 'https://api.snyk.io/rest/tenants/TENANT_ID/brokers/installs/INSTALL_ID/deployments?version=2024-02-08~experimental' \
--header 'Content-Type: application/vnd.api+json' \
--header 'Authorization: token YOUR_SNYK_TOKEN' \
--data-raw '{
    "data": {
        "type": "broker_deployment",
        "attributes": {
            "broker_app_installed_in_org_id":"ORG_ID_WHERE_APP_WAS_INSTALLED",
            "metadata": {
                "deployment_name": "My Universal Broker Deployment",
                "cluster": "Cluster X Region Y or whatever you need to not lose your deployment."
            }
        }
    }
}'
This returns the DEPLOYMENT_ID (data.id), for example:
| {
    ...
    "data": {
        "id": "12345678-1234-1234-1234-123456789012",
        "type": "broker_deployment",
        "attributes": {
            "install_id": "12345678-1234-1234-1234-123456789012",
            "metadata": {
                "deployment_name": "My Universal Broker Deployment",
                "cluster": "Cluster X Region Y or whatever you need to not lose your deployment."
            }
        }
    },
    ...
}
 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
At this point, you can start running the Broker client.
