CLI tests are performed locally. When results are shared with the Snyk platform using the --report option, resource configurations are also included.
SCM tests require access to your infrastructure as code files. Snyk stores them for the duration of the analysis and subsequently deletes them from the Snyk system. Snyk retains parsed resource configurations to provide context for issues and resources.
Terraform Cloud and Terraform Enterprise tests analyze plan files. Snyk removes secrets and sensitive values and retains resource configurations to provide context for issues and resources.
For drift detection using snyk iac describe, Snyk relies on the principle of least privilege and requires only read-only access to AWS, Azure, Google, or GitHub. Provider credentials are not sent to or stored by Snyk.
Snyk relies on local read-only Terraform State file access and extracts and sends relevant resource configuration data to the platform.
