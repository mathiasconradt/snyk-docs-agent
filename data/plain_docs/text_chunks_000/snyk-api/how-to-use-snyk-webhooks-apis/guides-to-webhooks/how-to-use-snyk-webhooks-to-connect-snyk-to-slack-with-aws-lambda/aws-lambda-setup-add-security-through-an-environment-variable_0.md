For security reasons the script that you created uses an environment variable: hmac_verification with a shared secret to validate the payload is coming from Snyk and has not been tampered with.
Follow these steps to add security through an environment variable:

Go to the Configuration tab in the AWS Lambda function.
Click Environment variables.
Add the new environment variable.
Use hmac_verification as your key.

Enter your preferred secret as the key value. Store this secret somewhere safe for use again later.
AWS Lambda function add environment variable interface
6. For added security, consider using Secrets Manager or Parameter Store for the shared secret.
