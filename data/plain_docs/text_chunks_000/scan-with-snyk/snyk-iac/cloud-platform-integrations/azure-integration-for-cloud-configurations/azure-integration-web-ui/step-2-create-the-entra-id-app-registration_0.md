Recap\
You have downloaded the Terraform template declaring the Azure Active Directory (AD) application registration, federated identity credential, and service principal for Snyk. Now you need to provision the infrastructure.

To scan an Azure subscription, Snyk takes the permissions of a service principal with a Reader role that allows Snyk to scan the configuration of your subscription resources.
Additionally, Snyk has a security feature that locks the federated credential for a subscription and tenant to the Organization that onboards it. This ensures that nobody can guess the credential's name and onboard it into a separate Organization to see those resources.
