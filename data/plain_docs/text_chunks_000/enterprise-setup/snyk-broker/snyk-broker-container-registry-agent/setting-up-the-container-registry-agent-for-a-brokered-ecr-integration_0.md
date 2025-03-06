Terminology and diagram for brokered ECR integration
In Elastic Container Registries the brokered communication is the same as in other container registries. However, ECR has a special authentication mechanism that requires setting up an Identify and Access Management (IAM) Role or User in the Agent.
The Container Registry Agent IAM Role or IAM User is an IAM Role or IAM User is used by the Container Registry Agent to assume a role with access to ECR.
The Snyk ECR Service Role is an IAM Role with access to ECR and assumed by the Container Registry Agent IAM Role or IAM User to gain read-only access to ECR. The Snyk ECR Service Role ARN is provided to the Broker Client together with the region the ECR runs in, and is passed to the Container Registry Agent that will assume it.
If there are multiple ECRs in multiple accounts that need to communicate with the Container Registry Agent, you must set up a Broker Client for each ECR.
The following illustrates the architecture for a brokered ECR integration. Refer to the steps that follow for information about setting up the components on the diagram.
Architecture of the brokered ECR integration
