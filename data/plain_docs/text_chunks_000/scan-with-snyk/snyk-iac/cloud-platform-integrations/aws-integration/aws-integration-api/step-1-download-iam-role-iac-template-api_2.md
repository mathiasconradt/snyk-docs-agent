The response is a JSON document like the ones below (trimmed for length).
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
      "data": "data \"aws_iam_policy_document\"<...>",
      "type": "tf"
    }
  }
}
Example response with CloudFormation template:
json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "id": "00000000-0000-0000-0000-000000000000",
    "type": "permissions",
    "attributes": {
      "data": "AWSTemplateFormatVersion:<...>",
      "type": "cf"
    }
  }
}
