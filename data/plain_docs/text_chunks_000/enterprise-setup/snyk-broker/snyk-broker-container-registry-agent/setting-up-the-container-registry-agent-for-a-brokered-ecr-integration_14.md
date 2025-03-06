In this step, the Role ARN of the SnykEcrServiceRole _**_will be used by providing it to the Broker Client. The broker client will pass it to the Container Registry Agent, which will assume it to connect to ECR.

Copy the Role ARN key that appears at the top of the Summary section of the SnykEcrServiceRole.
When running the Broker Client, provide the following environment variables to allow the Container Registry Agent to access your ECR account. No username and password are needed.
CR_TYPE=ecr
CR_ROLE_ARN=the role ARN of SnykEcrServiceRole
CR_REGION=AWS Region of ECR
CR_EXTERNAL_ID=Optional. The external ID found in the trust relationship condition
