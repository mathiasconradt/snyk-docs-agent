To understand the drift that happens in your cloud environment, compare the state of your environment to one or multiple Terraform state files (.tfstate).
The state file can be located locally or in an S3 bucket. Terraform Cloud is also available, but it is outside the scope of this getting started document.
The --from option helps Snyk determine the path of the .tfstate file.
For a single local Terraform state file, use the command:
$ snyk iac describe --from="tfstate://path/to/terraform.tfstate"
To load all the Terraform states found in a given directory automatically, you can use glob patterns like this:
$ snyk iac describe --from="tfstate://path/to/**/*.tfstate"
For a single Terraform state stored on an S3 backend:
$ snyk iac describe --from="tfstate+s3://my-bucket/path/to/state.tfstate"
You can also aggregate multiple Terraform state files by listing them in the --from option. You can scan your local directory for different files, or use different paths from different sources. To choose two specific Terraform states, execute the following:
$ snyk iac describe --from="tfstate://path/to/terraform_S3.tfstate,tfstate://path/to/terraform_VPC.tfstate"
