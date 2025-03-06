Before you use the Terraform CLI, ensure you configure it to use your Azure credentials. Your user must have either the Application Administrator or Global Administrator directory role. This is required to create the federated identity credential and service principal via Terraform.


In your terminal, navigate to the directory containing the Terraform file you downloaded (named snyk-permissions-azure.tf if downloaded from the Snyk Web UI).
Using the Terraform CLI, initialize the Terraform 
terraform init

Review and apply the Terraform plan:

terraform apply

Enter yes when Terraform asks if you want to perform the actions.

Terraform then provisions the infrastructure. When it is finished, you will see the following output:
```
Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
Outputs:
application_id = 12345678-9012-3456-7890-12345678abcd
```
Copy the application ID for use in the next step.
