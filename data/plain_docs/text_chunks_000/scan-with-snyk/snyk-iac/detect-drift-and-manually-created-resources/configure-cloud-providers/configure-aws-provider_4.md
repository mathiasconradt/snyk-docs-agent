Deploy this CloudFormation template to create the limited permission role that you can use according to the authentication guide in the preceding sections of this page.

When the stack is deployed, attach the following policy to your IAM user. This allows the user to assume only the role specified. For more information about granting a user access to assume a role, see the AWS Identity and Access Management User Guide.
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "sts:AssumeRole",
      "Resource": "arn:aws:iam::<IDOFYOURACCOUNT>:role/snyk_assume_role"
    }
  ]
}
There is no automatic way to update the CloudFormation template from the Snyk side because you launched this template from your AWS account. Therefore you must update the template yourself to use the most recent Snyk role.
