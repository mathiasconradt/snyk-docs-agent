The option --experimental is no longer required for testing your Terraform Projects.

There are differences between scanning the static files and plan output. This may be due to the following:

Variables - Terraform plan output considers the values stored in variables.
Terraform modules - Terraform plan output includes any configuration issues found from Terraform modules that you may be using.
Delta - By default, scanning the Terraform plan output scans only for configuration issues on the changes that will be made, not the whole deployment. In contrast, the static scan looks at all of the files. Try re-running the scan with the --scan=planned-values option.

If you have found a discrepancy that you cannot explain based on this information, submit a request to Support.
