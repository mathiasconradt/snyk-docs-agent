In this step, create an IAM Role or an IAM User for use by the Container Registry Agent. The IAM Role or IAM User could be provided to the Container Registry Agent via the methods described in the AWS docs.
The following examples explain how to provide the IAM Role or IAM User using one of the following methods:

Example a: Create a dedicated EC2 role and load credentials from AWS Identity and Access Management (IAM) roles to the EC2 instance running the Container Registry Agent image.
Example b: Create a dedicated user and provide its credentials through environment variables.

You can also provide a dedicated role in Amazon ECS tasks. For more information see the AWS docs.
