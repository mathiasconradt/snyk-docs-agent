Report only vulnerabilities at the specified level or higher.
--scan=<TERRAFORM_PLAN_SCAN_MODE>
Use this dedicated option for Terraform plan scanning modes to control whether the scan analyzes the full final state (for example, planned-values), or the proposed changes only (for example, resource-changes).
Default: If the --scan option is not specified, scan the proposed changes only by default. Example 1: --scan=planned-values (full state scan)\
Example 2: --scan=resource-changes (proposed changes scan)
