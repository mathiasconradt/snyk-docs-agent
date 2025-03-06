The data.attributes.data field in the preceding output is an escaped JSON string containing the Terraform or CloudFormation template with the IAM role and policy.
Before you can use the template to provision the resources, you need to unescape the JSON. This can be accomplished in the following ways:

Use jq
Transform the content manually
