Create a new CodeBuild project in your AWS account.
Choose a compatible base image for your project based on your programming language and dependencies.
Review how to authenticate the Snyk CLI with your account and consider using an environment variable to store sensitive information such as your Snyk CLI token.


The default Service role in AWS CodeBuild includes an IAM permission that allows the CodeBuild project to pull any secret from AWS Secrets Manager that starts with /CodeBuild/ in the name. Refer to the Troubleshooting section at the end of this guide for more information.


Configure build commands:
Install the Snyk CLI using the commands appropriate for your operating system.
Define a build command that executes the Snyk scan using the CLI.
Define a build command that sends a snapshot of the project to Snyk for continuous monitoring (optional).
Review the example buildspec.yaml that follows for more details:

```yaml
