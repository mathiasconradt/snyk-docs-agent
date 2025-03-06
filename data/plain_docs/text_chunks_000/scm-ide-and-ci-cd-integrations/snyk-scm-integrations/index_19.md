The Snyk Azure Repositories (TFS) integration uses an Azure DevOps personal access token (PAT). This token is configured with the specific permissions Snyk needs to access your Azure repositories.
To set up the Snyk Azure Repositories (TFS) integration you must be:

A Snyk Organization Admin.
A member of the Project Administrators group in Azure. This ensures the PAT has the edit subscriptions permissions required to enable webhooks.

In Azure, the PAT requires the following permissions for Snyk access:

Expiry: Custom defined. Snyk recommends choosing a token expiration date that is far in the future. 
Scopes: Custom defined. Read & write permissions are needed for the Code scope.
