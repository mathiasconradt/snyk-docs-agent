Read and aggregate all Terraform states in a given directory:
snyk iac describe --from="tfstate://directory/*.tfstate"
Use any unsupported backend by using terraform to pipe your state into a file and then use the file:
```
terraform state pull > state.tfstate
snyk iac describe --from="tfstate://state.tfstate"
```
