Go to the EC2 Management Console and choose the instance running the Container Registry Agent container.
Select Actions → Security → Modify IAM Role.
From the IAM role dropdown list, choose the Instance profile of the IAM role created in the first step.\
   Example: arn:aws:iam::aws-accoun:instance-profile or SnykCraEc2Role
Then Save.

When you are running the Container Registry Agent image on the EC2 machine, the credentials of the attached role are automatically picked up by the running Container Registry Agent. Therefore, no extra steps are needed. For more information see the Amazon docs.
