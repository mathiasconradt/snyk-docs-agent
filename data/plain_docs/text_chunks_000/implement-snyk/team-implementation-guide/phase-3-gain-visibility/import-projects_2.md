For details, see Git repositories (SCMs) integrations with Snyk.
Connect your repositories for automatic scanning.
For a small number of applications, typically under a hundred:

From the Snyk Web UI, connect to Git code repositories from the Settings-Integrations page.
In the integration settings:
Disable the automatic fixes and PR/Merge checks when first onboarding Projects.
Enable them once a steady state is reached and blocking is desired.
From the Projects page, add the Projects.
Monitor results in Git code repositories.

For hundreds or thousands of repositories:

At scale, Snyk recommends using the API. APIs are available with the Snyk Enterprise plan.
Use the Snyk API to import your Projects. This leverages an existing source control integration and can be used to automate processes.
The  snyk-api-import tool uses the API to manage onboarding at scale for large enterprises and is the suggested tool to use at scale. The source control structure will need to be mirrored.
