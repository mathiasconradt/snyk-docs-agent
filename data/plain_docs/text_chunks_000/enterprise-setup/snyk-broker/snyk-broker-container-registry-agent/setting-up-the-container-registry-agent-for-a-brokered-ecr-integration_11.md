From the AWS Management Console again, navigate to the Roles page. Log in if needed to navigate to the AWS Management Console.
Create a new role.
Select AWS service as the trusted entity and EC2 as the service for this Role.
Choose to go next with permission.
Check the policy AmazonEC2ContainerRegistryReadOnlyForSnyk on the list.
Choose to go next with tags and review.
Set SnykEcrServiceRole as the Name.
Set Allows EC2 instances to call ECR AWS services on your behalf as the Description.
