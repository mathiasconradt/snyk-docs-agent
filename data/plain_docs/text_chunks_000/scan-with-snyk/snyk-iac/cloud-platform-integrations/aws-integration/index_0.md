Snyk integrates with your Amazon Web Services (AWS) account to find issues in your cloud configurations and to generate cloud context to help you prioritize your vulnerabilities.
You can onboard an AWS account to Snyk using the following methods:

Snyk Web UI
Snyk API

To set up an AWS integration, you need the following:

A Snyk Enterprise plan
A new Snyk Organization, with appropriate feature flags assigned by your Snyk contact
A Snyk Group Administrator or Organization Administrator role
Access to an AWS account and associated credentials with permissions to create a read-only IAM role
Access to the Terraform CLI, AWS CLI, or AWS Management Console to create the IAM role for Snyk via Terraform or AWS CloudFormation
If you are using Terraform or the AWS CLI, ensure you configure it with your AWS credentials. See the instructions for Terraform or the AWS CLI
API only: An Organization-level service account with an Org Admin role to use the Snyk API
API only: An API client such as curl, HTTPie, or Postman
