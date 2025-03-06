Supported IaC sources
At this time, the snyk iac describe command supports reading Terraform states as follows:

Local: --from="tfstate://terraform.tfstate"
S3: --from="tfstate+s3://my-bucket/path/to/state.tfstate"
GCS: --from="tfstate+gs://my-bucket/path/to/state.tfstate"
HTTPS: --from="tfstate+https://my-url/state.tfstate"
Terraform Cloud / Terraform Enterprise: --from="tfstate+tfcloud://WORKSPACE_ID"
Azure blob storage: --from="tfstate+azurerm://container-name/path/to/state.tfstate"

You can use any unsupported backend by using terraform to pipe your state in a file and then use the file with snyk iac describe:
$ terraform state pull > state.tfstate
$ snyk iac describe --from="tfstate://state.tfstate"
