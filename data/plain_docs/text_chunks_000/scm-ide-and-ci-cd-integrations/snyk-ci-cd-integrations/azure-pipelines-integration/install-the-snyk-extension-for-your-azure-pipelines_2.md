Access your Snyk account.
Token:
For free plans, go to your General Account Settings and find, copy, and save your personal API authentication token on the side.
For paid plans, navigate to the Organization where you want to integrate; then go to Settings to create a new service account token. Copy and save it on the side.
Access your Azure DevOps account and navigate to the Extensions -> Browse marketplace.
Search for the Snyk Security Scan extension and click Get it free.
Create a new Service Connection in your Project via Project Settings —> Pipelines —> Service Connections.
Select the Snyk Authentication service connection:
In the Snyk Authentication service connection form, enter the Snyk API Token.
Click Save, ensuring the new service connection appears in your list of service connections.

Create your first service connection
New Snyk authentication service connection

If you are using a data center other than the system default, see the section Custom API endpoints.
