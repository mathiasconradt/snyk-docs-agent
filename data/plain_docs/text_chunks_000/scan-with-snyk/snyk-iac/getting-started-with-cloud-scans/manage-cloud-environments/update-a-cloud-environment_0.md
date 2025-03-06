You can update the following attributes for a cloud environment:

AWS: Environment name and IAM role ARN (Amazon Resource Name). The new role ARN must have the same AWS account ID as the old role ARN. See Find the role ARN.
Google: Environment name and service account email address. The new service account email must be associated with the same Project ID as the old one.
Azure: Environment name and application ID. The new application ID must be associated with the same subscription and tenant as the old one.

For example, you must update the Snyk IAM role ARN if you change the role's name in the Terraform or CloudFormation template and deploy the changes.
You can update a Snyk Cloud Environment using the following methods:

Web UI
API
