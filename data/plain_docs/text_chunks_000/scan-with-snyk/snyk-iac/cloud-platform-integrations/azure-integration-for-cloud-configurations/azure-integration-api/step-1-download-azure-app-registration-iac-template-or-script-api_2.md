The response is a JSON document like the ones that follow (trimmed for length).
Example response with Terraform configuration:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "id": "00000000-0000-0000-0000-000000000000",
    "type": "permissions",
    "attributes": {
      "data": "provider \"azuread\"<...>",
      "type": "tf"
    }
  }
}
Example response with Bash script:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "id": "00000000-0000-0000-0000-000000000000",
    "type": "permissions",
    "attributes": {
      "data": "objectId=$(az ad app create <...>",
      "type": "bash"
    }
  }
}
