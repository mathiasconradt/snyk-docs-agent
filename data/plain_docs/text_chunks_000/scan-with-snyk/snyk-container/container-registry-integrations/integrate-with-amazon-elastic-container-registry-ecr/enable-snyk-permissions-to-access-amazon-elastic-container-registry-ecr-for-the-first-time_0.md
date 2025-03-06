When you connect to the ECR integration, ensure that the us-east-2 region is activated. This is required for the STS (Security Token Service) to work properly. For more information, see the related support article.

This process explains how to set up a resource role in AWS and the necessary policies. For additional information, see the Amazon ECR documentation.

Log in to the AWS Management Console.
Navigate to the IAM service.
Navigate to the Policies page to create a policy for the role by updating the related JSON file as follows:
Create a new policy.
Navigate to the JSON tab.
Select and delete all of the default text in the JSON file.
Copy the script as it is displayed from the UI in your Snyk account and paste it inside the JSON file.
Set AmazonEC2ContainerRegistryReadOnlyForSnyk as the Name.
Enter Provides Snyk with read-only access to Amazon EC2 Container Registry repositories as the Description.
Click Create Policy.
Create a role by which to implement the policy:
From the AWS Management Console, navigate to the Roles page and create a new role.
Select AWS service as the trusted entity and EC2 as the service for this role.
Click Next:permissions.
From the Policies list that is displayed, search for and select the AmazonEC2ContainerRegistryReadOnlyForSnyk policy you just created.
Skip to the last step (Review) of the process.
Name the role SnykServiceRole.
Enter Allows EC2 instances to call Snyk AWS services on your behalf as the Description and then create the role.
Harden the usability scope for the role:
From the Roles page, find and click the link for the role you just created to update its configurations and navigate to the Trust relationships tab.
Click Edit trust relationship.
In the Policy Document, select and delete the entire script and then copy and paste the following script as it is displayed from the UI in your Snyk account, in the Harden usability scope field of the Account credentials.

Enabling Snyk permissions to access Amazon Elastic Container Registry (ECR)
