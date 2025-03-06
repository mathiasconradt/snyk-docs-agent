To find the ARN of the Snyk Cloud IAM role using the AWS CLI, retrieve the role details, replacing snyk-cloud-role with the name of your role if you changed it:
aws iam get-role \
  --role-name snyk-cloud-role \
  --query 'Role.Arn' --output text
The output looks like this:
arn:aws:iam::123412341234:role/snyk-cloud-role
