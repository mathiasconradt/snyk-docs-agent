Before you use the Terraform CLI, ensure you configure it to use your Google Cloud credentials.

To provision the Google service account using Terraform:

In your terminal, navigate to the directory containing your .tf file (named snyk-permissions-google.tf if it has been downloaded from the Web UI).
Using the Terraform CLI, initialize the Terraform 
terraform init
3. Review and apply the Terraform plan:
terraform apply
4. Enter yes when Terraform asks if you want to perform the actions.
Terraform then creates the Google service account. When it is finished, you will see the following output:
```
Apply complete! Resources: 22 added, 0 changed, 0 destroyed.
Outputs:
service_account_email = "snyk-cloud-mt-us-abcd1234@my-project.iam.gserviceaccount.com"
identity_provider = "https://iam.googleapis.com/projects/12345567/locations/global/workloadIdentityPools/workload-identity-123456/providers/identity-provider-123456"
```
Copy the service account email and identity provider for use in the next step.
