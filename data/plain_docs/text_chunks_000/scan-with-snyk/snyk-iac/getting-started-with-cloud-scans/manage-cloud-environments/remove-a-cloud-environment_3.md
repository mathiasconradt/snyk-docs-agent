Removing an environment does not remove the Snyk Identity and Access Management (IAM) role. To fully remove Snyk's access to your Amazon Web Services (AWS) account, delete the IAM role using the same infrastructure as code tool that created it:

Terraform: delete the role using the terraform destroy command.
CloudFormation: delete the CloudFormation stack using the AWS Management Console or the AWS CLI delete-stack command.
