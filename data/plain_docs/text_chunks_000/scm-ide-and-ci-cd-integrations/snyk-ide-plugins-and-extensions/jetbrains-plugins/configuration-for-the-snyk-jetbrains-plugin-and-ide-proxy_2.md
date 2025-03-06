Snyk Open Source: Enable a scanner for open source dependencies; enabled by default.
Snyk Infrastructure as Code: Enable a scanner for insecure configurations in Terraform and Kubernetes code; enabled by default.
Snyk Container vulnerabilities: Enable a scanner for container vulnerabilities in container images and Kubernetes applications; enabled by default.
Snyk Code Security issues: Enable a scanner for security vulnerabilities in your application code; enabled by default
Snyk Code Quality issues: Enable a scanner for code quality issues in your application code; disabled by default.
Severity selection: Filter issues by their severity, from Low to Critical.
All Issues vs Net New Issues: Specify whether to see all issues or only net new issues. The latter requires a Git repository, where it compares findings with those in the base branch.

Additional parameters: Set additional snyk test CLI options for Open Source scanning.
For unmanaged C/C++ scanning, use the CLI option --unmanaged to find vulnerabilities in open-source packages. This option works only for unmanaged C/C++ scanning; do not use this option for other languages. Additional parameters do not apply to Snyk Code or IaC.
