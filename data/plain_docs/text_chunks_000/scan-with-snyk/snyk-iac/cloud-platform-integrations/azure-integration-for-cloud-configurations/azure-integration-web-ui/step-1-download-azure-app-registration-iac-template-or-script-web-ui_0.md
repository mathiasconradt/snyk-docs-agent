Before you can create a Cloud Environment for an Azure subscription, you must download a Terraform infrastructure as code (IaC) template or Azure CLI Bash script declaring the following resources:

An Active Directory (AD) application registration
A federated identity credential
A service principal

This infrastructure gives Snyk read-only permission to scan the configuration of resources in your subscription.
You will use the IaC template or Bash script you downloaded to provision the infrastructure in Step 2: Create the Entra ID application.
Both methods create the same infrastructure, so pick the method you are most comfortable working with.
