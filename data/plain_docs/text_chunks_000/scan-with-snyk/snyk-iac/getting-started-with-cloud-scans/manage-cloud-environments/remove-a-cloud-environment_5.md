Removing an environment does not remove the Azure app registration, federated identity credential, or service principal. To fully remove Snyk's access to your Azure subscription, delete the infrastructure according to the method you used to create it:

Terraform: use the terraform destroy command.
Azure CLI Bash script: first, delete the Reader role assignment for the app registration (see docs: Azure CLI or Azure Portal), then delete the Azure app registration (see docs: Azure CLI or Azure Portal).
