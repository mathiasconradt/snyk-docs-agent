$ export DCTL_S3_PROFILE="s3reader"
Export the usual AWS named profile
$ export AWS_PROFILE="snykrole"
$ snyk iac describe --from="tfstate+s3://mybucket/terraform.tfstate"
