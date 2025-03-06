Terraform plan is the step run between writing your configuration files and deploying those changes.
$ terraform plan identifies the changes that need to be made to your target environment in order to match your desired state.
As part of this planning stage, all variables and Terraform modules that are used in your targeted Terraform deployment are taken into consideration.
If you have written a custom Terraform module and are referencing it in your deployment, then it is included in the Terraform plan output and scanned accordingly. This means the Terraform plan output provides a complete artifact to be scanned from a security perspective.
As of Snyk CLI version 1.594.0, you can scan this artifact using the Snyk IaC CLI.
This file is not sent to Snyk to be processed; it is scanned locally with the CLI and does not leave your machine.
