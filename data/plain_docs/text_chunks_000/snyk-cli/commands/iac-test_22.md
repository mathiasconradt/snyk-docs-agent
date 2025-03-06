$ snyk iac test /path/to/terraform_file.tf
Test a Terraform plan file
$ terraform plan -out=tfplan.binary
$ terraform show -json tfplan.binary > tf-plan.json
$ snyk iac test tf-plan.json
