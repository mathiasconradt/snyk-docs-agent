Before you can onboard an AWS account to Snyk via the API, you need access to the AWS account and associated credentials with permissions to create a read-only Identity and Access Management (IAM) role. See the prerequisites on the AWS integration page.
The steps follow to onboard an AWS account via the API:

Download an infrastructure as code (IaC) template: to give Snyk permissions to scan your account.
Create an AWS IAM role: using the template you downloaded.
Create and scan a Cloud Environment.

When you have completed the steps, you will be able to do the following:

View the cloud configuration issues Snyk finds. See Manage cloud issues.
Prioritize your vulnerabilities with cloud context.
