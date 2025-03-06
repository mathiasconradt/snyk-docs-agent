Before you can create a Cloud Environment, you must download an infrastructure as code (IaC) template declaring a tightly-scoped Google service account that gives Snyk permission to scan the configuration of resources in your Google Project.
The template also enables a set of Google service APIs for your Google Cloud Project. This ensures that Snyk can use the necessary APIs to scan your Project's resources.
You will use this IaC template to provision the role in Step 2: Create the Google service account.
