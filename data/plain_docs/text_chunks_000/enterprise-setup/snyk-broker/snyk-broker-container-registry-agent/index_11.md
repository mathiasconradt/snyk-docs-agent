The resources described can be used as follows so that a single Container Registry Agent instance can access ECR repositories located in different accounts.
Run this step once only. Create the Container Registry Agent IAM Role or IAM User and use it to run the Container Registry Agent. The IAM Role or IAM User could be provided to the Container Registry Agent using one of the methods described in the AWS docs.
Run the following steps for each of your ECR accounts, using a separate Broker instance for each ECR account:

In the AWS account where your ECR resides, create the Snyk ECR Service Role with read access to your ECR, and edit the trust relationship to allow this role to be assumed only by the specific Container Registry Agent IAM Role or IAM User created in the one-time step.
Restrict the Container Registry Agent IAM Role or IAM User to be allowed to assume only the Snyk ECR Service Role(s).
Provide the Broker Client with the Role ARN (Amazon Service Name) of the Snyk ECR Service Role together with the ECR region. The Broker Client passes this Role ARN to the Container Registry Agent, and the Container Registry Agent assumes it to access your ECR. The following environment variables are required:
CR_ROLE_ARN=\
CR_REGION=\
CR_EXTERNAL_ID=\
