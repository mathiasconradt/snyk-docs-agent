Support for Terraform (TF) variables is currently available only in the CLI. Snyk supports:

Input Variables
Local Values

At this time Snyk does not support Output Values.
The CLI scans all directories and handles each directory that includes supported TF files as its own module. Each module that includes variables is dereferenced appropriately.
Supported TF file formats are .tf, .tfvars, .auto.tfvars. Snyk does not support variables that were set and defined using environment variables or the --var CLI option.
The scan handles variable definition precedence in the same way that TF handles the precedence.
You can load an external variable definitions file by using the --var-file option, for example:
snyk iac test myproject/staging/networking --var-file=myproject/vars.tf
This loads the vars.tf definitions file from the myproject directory, dereferences any variables if they exist, and applies them to the context of the scanned path, myproject/staging/networking in this example.
For more information, see the IAC test help.
