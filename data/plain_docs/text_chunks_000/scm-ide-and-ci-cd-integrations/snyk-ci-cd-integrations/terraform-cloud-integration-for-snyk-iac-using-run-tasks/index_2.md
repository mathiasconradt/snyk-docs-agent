Terraform Cloud has a Run Tasks feature available to customers with Run Task entitlement on their Terraform plan. This entitlement is an optional add-on to the Team plan and above. A “run” in TFC represents a unit of execution in TFC that eventually generates a Terraform plan to be reviewed, approved, and applied.
The Run Tasks feature allows external integrations to connect to “run” events and interact with them, providing a status to determine if this run should pass or fail.
Snyk introduced support in May 2021 for Terraform users to scan their Terraform plan JSON output against Snyk security policies for all major cloud providers.
The Snyk integration connects the “run” workflow of Terraform Cloud with Snyk Terraform plan scanning, meaning that for each “run” generated, Snyk scans the Terraform plan artifact for misconfigurations.
If you are a user of Terraform Cloud (Team & Governance tier), you can sign up with Snyk to set the integration and connect it with your workspaces in Terraform Cloud. If you have the Run Task entitlement add-on you can then track, manage, and resolve security misconfigurations as part of your software development lifecycle with Terraform Cloud.
For setup and use details, see the following pages:

Set up the Terraform Cloud integration for IaC
How to use the Terraform Cloud integration for IaC
