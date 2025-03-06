Before you use the AWS CLI, ensure you configure it to use your AWS credentials.


In your terminal, navigate to the directory containing the Snyk IAM role CloudFormation file (named snyk-permissions-aws.yml if it has been downloaded from the Snyk Web UI).
Using the AWS CLI, launch the CloudFormation stack, replacing snyk-cloud-role with the name of your IAM role if you changed it and snyk-permissions-aws.yml with the name of your file:

aws cloudformation create-stack \
  --stack-name snyk-cloud-role \
  --capabilities CAPABILITY_NAMED_IAM \
  --template-body file://snyk-permissions-aws.yml
3. AWS then creates the IAM role. This typically takes about a minute. To check if it is finished, get the stack status, replacing snyk-cloud-role with the name of your IAM role:
aws cloudformation describe-stacks \
  --stack-name snyk-cloud-role \
  --query 'Stacks[0].StackStatus'
If the output says "CREATE_COMPLETE", AWS has finished creating your role.
