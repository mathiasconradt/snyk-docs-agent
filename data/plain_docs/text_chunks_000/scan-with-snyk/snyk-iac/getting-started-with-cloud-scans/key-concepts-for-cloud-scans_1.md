A Snyk environment is an organizing concept that equates to an Amazon Web Services (AWS) account, Azure subscription, or Google Cloud project.
Unlike a Snyk Project, an environment contains scannable entities known as resources. Resources can be interrelated; one resource can be a child or sibling resource of another. Resources also have attributes that can be tested, and these attributes can be misconfigured, which generates Issues. This makes environments and their resources different from Projects.
A Snyk environment also includes integration settings for a cloud provider. For example, each environment can represent an integration with a different AWS account.
Use the /cloud/environments Snyk REST API endpoint to retrieve a list of all environments and optionally filter by attribute, such as name and scan status.
The following cloud providers are supported:

Amazon Web Services
Microsoft Azure
Google Cloud
