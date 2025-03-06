Explicitly scan AWS in a Terraform context:
snyk iac describe --to="aws+tf"
Use --tf-provider-version to specify the Terraform provider version
Specify terraform provider 3.43.0 to use this provider to avoid scan errors:
snyk iac describe --tf-provider-version=3.43.0
Use the same parameter for every cloud provider:
snyk iac describe --to="github+tf" --tf-provider-version=4.10.1
