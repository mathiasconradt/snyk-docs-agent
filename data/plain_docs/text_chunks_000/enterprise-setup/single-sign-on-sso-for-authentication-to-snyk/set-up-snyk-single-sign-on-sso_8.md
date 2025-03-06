When using Active Directory Federation Service (ADFS) for the connection between your Identity provider and Snyk, add the Realm Identifier, a Callback URL, and a Signing certificate in your Identity provider to establish trust with Snyk. For more information, see Connecting Auth0 to an ADFS server (video).
| Information                         | Description                                                                                                                                                  |
| --------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Realm Identifier                        | urn:auth0:snyk                                                                                                                                                   |
| EU Realm Identifier                     | urn:auth0:snyk-mt-eu-prod-1                                                                                                                                      |
| AU Realm Identifier                     | urn:auth0:snyk-mt-au-prod-1                                                                                                                                      |
| Callback URL                            | https://snyk.auth0.com/login/callback                                                                                   |
| Callback URL (Snyk EU Tenant Customers) | https://snyk-mt-eu-prod-1.eu.auth0.com/login/callback                                                   |
| Callback URL (Snyk AU Tenant Customers) | https://snyk-mt-au-prod-1.au.auth0.com/login/callback                                                   |
| Signing cert                            | https://snyk.auth0.com/pem (add as a signature and not encryption)                                                                 |
| Signing cert (Snyk EU Tenant Customers) | https://snyk-mt-eu-prod-1.eu.auth0.com/pem?cert=connection (add as a signature and not encryption) |
| Signing cert (Snyk AU Tenant Customers) | https://snyk-mt-eu-prod-1.au.auth0.com/pem?cert=connection (add as a signature and not encryption) |
