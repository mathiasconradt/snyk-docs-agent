Recap\
You have downloaded the Terraform or Amazon Web Services (AWS) CloudFormation template declaring the Identity and Access Management (IAM) role for Snyk. Now you need to provision the infrastructure.

The process to create the Snyk IAM role is the same whether you are using the Snyk Web UI or Snyk API to onboard your AWS account.
The IAM role you will provision has the following policies attached to it:

The AWS-managed SecurityAudit read-only policy.
A supplemental inline policy granting required read permissions not covered by SecurityAudit.

The role also has a trust policy that specifies an external ID. Snyk generates this unique ID for your organization to prevent other parties from assuming the role without the ID, even if they have your role Amazon Resource Name (ARN).
