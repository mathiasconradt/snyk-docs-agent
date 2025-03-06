Parameter: serviceConnectionEndpoint\
Required: Yes\
Default: none\
Type: String / Azure Service Connection Endpoint of type SnykAuth / Snyk Authentication
Description: The Azure DevOps service connection endpoint where your Snyk API token is defined. Your admin defines this within your Azure DevOps project settings, assigning it using a unique string in order to differentiate between different connections.
The configuration panel displays all available Snyk service connections from a dropdown list like the following:
Snyk service connections
If multiple Snyk service connections are available from the dropdown list, ask your administrator which to use for the pipeline you are working with.
