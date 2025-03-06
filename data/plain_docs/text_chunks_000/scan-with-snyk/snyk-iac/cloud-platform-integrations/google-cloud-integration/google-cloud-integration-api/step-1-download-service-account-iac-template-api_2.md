The data.attributes.data field in the preceding output is an escaped JSON string containing the Terraform template with the Google service account.
Before you can use the template to provision the resources, you must unescape the JSON. This can be accomplished in either of the following ways:

Use jq
Transform the content manually
