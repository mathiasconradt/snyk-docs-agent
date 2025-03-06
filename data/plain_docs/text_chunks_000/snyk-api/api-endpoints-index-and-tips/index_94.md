Applying (project) attributes
By using the API endpoint Applying attributes, you can set attributes for Snyk Projects including business criticality, lifecycle stage, and environment once the project has been created . To do so:

Import the project using the API endpoint Import targets.
Get the status API ID from Import targets.
Poll using the endpoint Import job details until all imports have completed.
Parse the project IDs from the projectURL field.
Use the endpoint Applying attributes to set the project attributes.

More information: Project attributes
