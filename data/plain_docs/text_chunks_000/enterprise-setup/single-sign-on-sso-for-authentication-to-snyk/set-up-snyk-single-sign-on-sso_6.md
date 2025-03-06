When using Entra ID (formerly Azure AD) for the connection between your Identity provider and Snyk, you must add the Redirect URIs in your Identity provider to establish trust with Snyk.

Use your Entra ID name when authenticating rather than the SCM user account name, or a connection error can occur.

| Information                              | Description                                                                                                    |
| ---------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| Redirect URIs                            | https://snyk.auth0.com/login/callback                                 |
| Redirect URIs (Snyk EU Tenant Customers) | https://snyk-mt-eu-prod-1.eu.auth0.com/login/callback |
| Redirect URIs (Snyk AU Tenant Customers) | https://snyk-mt-au-prod-1.au.auth0.com/login/callback |
