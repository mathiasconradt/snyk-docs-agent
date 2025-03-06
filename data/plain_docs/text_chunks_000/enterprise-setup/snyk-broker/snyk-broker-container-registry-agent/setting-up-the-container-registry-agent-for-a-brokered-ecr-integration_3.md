Stage 1: Create a Role

Go to AWS to log in to the AWS Management Console with the IAM service and navigate to the Roles page.
Choose to create a role.
Select AWS service for the type of trusted entity.
Select EC2 as the use case.
Choose to go next with permission and tags.
Review and provide a role name: SnykCraEc2Role.
Create the role.

From the role's Summary page, for later use, copy the Instance Profile ARN.\
    Example:  arn:aws:iam::aws-account:instance-profile or SnykCraEc2Role\
    Also, copy the Role ARN.
Example: arn:aws:iam::aws-account:role or SnykCraEc2Role
