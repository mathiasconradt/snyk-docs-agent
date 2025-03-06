Before you can create a Cloud Environment, you must download an Infrastructure as Code (IaC) template declaring a read-only Identity and Access Management (IAM) role that Snyk can assume to scan the configuration of resources in your Amazon Web Services (AWS) account.
You will use this IaC template to provision the role in Step 2: Create the Snyk IAM role.
You can choose the template format, either Terraform HCL or AWS CloudFormation. The IAM permissions are identical in both, so pick the format you are most comfortable working with.
