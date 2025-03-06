With SSO configured, users are provisioned with a new Snyk account when they first sign on through SSO, even if they previously created their own account.
The sign-on process includes these steps:

When users select SSO from Snyk.io to log in, they are redirected to and authenticated by the identity provider you requested.
The identity provider communicates this authentication to Snyk servers, sending relevant data to Snyk to create each user.
Snyk checks the directory for that user.
If the user is already configured, Snyk enables the appropriate access. For a new user, Snyk adds the user to the directory and then redirects the user to Snyk.io with the appropriate access.
