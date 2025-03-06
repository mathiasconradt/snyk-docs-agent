Feature availability\
Service accounts are available only for Enterprise plans. For more information, see plans and pricing.
Free and Team plan users and Trial users have access to a Snyk user's token under their profile and can use this token to authenticate with a CI/CD, to run the CLI locally or on a build machine, and to authenticate with an IDE manually.

Service accounts are a special type of system user. Creating a service account generates an API token that is the only token associated with the service account and takes the place of standard user credentials. Snyk needs authentication in order to initiate Snyk processes.
You can set up a service account to use for automation rather than using a Snyk user's token and to help manage integrations. 
You can generate single or multiple tokens on the Organization or Group levels to manage your integrations. Each service account has a unique name to make it easier to recognize. This name cannot be reused.
