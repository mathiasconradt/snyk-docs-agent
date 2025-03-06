To add an Azure integration for cloud configurations, you need the following:

A Snyk Business or Enterprise plan
A new Snyk Organization with appropriate feature flags assigned by your Snyk contact
A Snyk Group Administrator or Organization Administrator role
Access to a Microsoft Azure subscription and associated credentials with permissions to create the following resources:
An Active Directory (AD) application registration
A federated identity credential\
    If you are using Terraform to create this resource, your user must have either the Application Administrator or Global Administrator directory role.
A service principal with read-only permissions\
    If you are .using Terraform to create this resource, your user must have either the Application Administrator or Global Administrator directory role.
Access to the Terraform CLI or Azure CLI (locally or via the Cloud Shell) to create the above resources via Terraform or Bash script\
  If you are using Terraform or the Azure CLI locally, ensure you configure it with your Azure credentials. See the instructions for Terraform or the Azure CLI.
API only: An Organization-level service account with an Org Admin role to use the Snyk API
API only: An API client such as curl, HTTPie, or Postman
API only, optional: jq, to unescape JSON containing the Terraform template or Bash script
