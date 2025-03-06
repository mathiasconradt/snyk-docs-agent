You can connect your repositories for automatic scanning. See Snyk SCM integrations for more details.
For a small number of applications, typically under a hundred, follow these steps.

Navigate to Settings and then to Integrations, and connect to Git code repositories using a tile on the Integrations page.
In the settings for the integration:
Disable the automatic fixes and PR/Merge checks when first onboarding Projects
Enable after a steady state is reached and blocking is desired.
From the Projects listing, add Projects using the Web UI.
Monitor results in Git code repositories.

For hundreds or thousands of repositories, you can use the API endpoint Import targets to import your Projects. This takes advantage of an existing source control integration and can be used to automate processes.
The snyk-api-import tool uses the API to manage onboarding at scale for large enterprises and is the suggested tool to use at scale. You must mirror the source control structure when using the snyk-api-import tool.
