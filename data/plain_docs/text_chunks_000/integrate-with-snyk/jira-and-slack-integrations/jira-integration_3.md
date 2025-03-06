It is best practice to set up a new user in Jira for this integration, instead of using the credentials of an existing account.
Cloud-hosted Jira implementations require a username and API token authentication. Jira API tokens are generated in Atlassian API tokens. Self-hosted implementations can also authenticate with a username and password.
Enter the Jira account credentials in the Snyk Web UI: Organization Settings > Integrations page: Base URL, Username/email, and API token.
Jira settings
After the details have been entered into the integration, press Save and continue. 

If the connection is not successful, check that the Base URL starts with exactly https:// It must not have capitals or be http.

If the connection is successful, you will see the connection details in orange at the top of the page, with options for configuring the default Project and issue type, as well as any fields to ignore. 
The default Project and issue type must be configured. 
A successful connection
