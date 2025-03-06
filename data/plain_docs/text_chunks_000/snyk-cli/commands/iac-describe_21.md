$ AWS_PROFILE=profile_name snyk iac describe
Use a single Terraform state stored on an S3 backend
$ snyk iac describe --from="tfstate+s3://my-bucket/path/to/state.tfstate"
