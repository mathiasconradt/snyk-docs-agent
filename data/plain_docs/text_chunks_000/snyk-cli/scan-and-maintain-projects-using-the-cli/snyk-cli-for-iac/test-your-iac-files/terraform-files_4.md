Provide the path to your Terraform plan output which must be stored as a valid JSON file.
snyk iac test tf-plan.json
By default, Snyk scans the changes that will be made to your infrastructure, not the full infrastructure.
You can change this behavior by using the --scan= option.

--scan=resource-changes is the default behavior. This scans only the changes that would be made to your infrastructure if you ran $ terraform apply.
--scan=planned-values scans the full planned state, providing results for the existing infrastructure plus changes that will be made.

If you do not already have your Terraform plan output saved as a JSON file, you may need to follow these steps:
terraform plan -out=tfplan.binary
terraform show -json tfplan.binary > tf-plan.json
You can name the tf-plan.json file according to your needs.
These files are considered sensitive, and it is not recommended to commit them to source control.
