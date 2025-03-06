Follow these steps to set up a single Container Registry Agent instance with access to ECR repositories located in different accounts.

Run this step once only. Create the Container Registry Agent IAM Role or IAM User with permissions to assume a role. Use the IAM Role or IAM User to run the Container Registry Agent. Run the following steps for each of your ECR accounts, using a separate Broker instance for each ECR account.
In the AWS account where your ECR resides, create the Snyk ECR Service Role with read access to your ECR and restrict this role to be assumed only by the specific Container Registry Agent IAM Role or IAM User created in the previous step.
Restrict the Container Registry Agent IAM Role or IAM User to be allowed to assume only your Snyk ECR Service Role(s).
Provide the Broker Client with the Role Amazon Resource Name (ARN) of the Snyk ECR Service Role. The Broker Client passes this Role ARN to the Container Registry Agent, and the Container Registry Agent assumes it to access your ECR.
