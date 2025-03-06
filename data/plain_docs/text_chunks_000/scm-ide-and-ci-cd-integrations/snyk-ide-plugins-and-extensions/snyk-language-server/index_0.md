Snyk offers IDE integrations that allow you to use the functionality of Snyk in your Integrated Development Environment or Editor. This page describes the Snyk Language Server that can provide diagnostics for any IDE or Editor that supports the Language Server Protocol. For information about all of the IDE plugins and their use, see Snyk for IDEs in the docs.
The Snyk Language Server scans for vulnerabilities, open source license issues, and infrastructure misconfigurations and returns results with security issues categorized by issue type and severity.
For open source, you receive automated, algorithm-based fix suggestions for both direct and transitive dependencies.
Snyk Language Server scans for the following types of issues:

Open Source Security - security vulnerabilities and license issues in both the direct and indirect (transitive) open-source dependencies pulled into the Snyk Project. See also the Open Source docs.
Code Security - security vulnerabilities in your code. See also the Snyk Code docs.
Infrastructure as Code (IaC) Security - configuration issues in your IaC templates: Terraform, Kubernetes, CloudFormation, and Azure Resource Manager. See also the Snyk Infrastructure as Code docs.

After you have installed and configured the Language Server, every time you run it, open a file, or save, Snyk scans the manifest files, proprietary code, and configuration files in your project. Snyk delivers actionable vulnerability, license, or misconfiguration issue details and displays the results natively within the LSP supporting Editor or IDE.
This page explains supported environments, support, and giving feedback and provides installation instructions.
