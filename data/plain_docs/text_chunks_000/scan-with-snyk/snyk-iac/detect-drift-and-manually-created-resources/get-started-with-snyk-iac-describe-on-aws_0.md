Step 1: Configure AWS authentication for your environment
The snyk iac describe command requires authentication to your cloud provider in order to run properly. It requires only the lowest read-only access rights possible. You can use use the built-in AWS ReadOnlyAccess IAM policy for an IAM user as the default to get started.
snyk iac describe can reuse standard authentication methods for AWS, such as the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_REGION environment variables. When those are set, the Snyk CLI will automatically pick them up to authenticate on AWS.
Alternatively, you can configure the AWS profile in ~/.aws/credentials and use the AWS_PROFILE environment variable.
