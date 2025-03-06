Before you use the Terraform CLI, ensure you configure it to use your AWS credentials.


In your terminal, navigate to the directory containing the Snyk IAM role Terraform file (named snyk-permissions-aws.tf if it has been downloaded from the Snyk Web UI).
Using the Terraform CLI, initialize the Terraform 
terraform init
3. Review and apply the Terraform plan:
terraform apply
4. Enter yes when Terraform asks if you want to perform the actions.
Terraform then creates the IAM role. When the role has been created, you will see the following output:
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
