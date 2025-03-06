The IdP (or issuer URL) must be publicly reachable. If these cannot be made public then SAML should be used rather than OIDC

When using OIDC for the connection between your Identity provider and Snyk, add the Callback/Redirect URIs and OAuth Grant Type in your identity provider to establish trust with Snyk.
| Information                                       | Description                                                                                                    |
| ------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| Callback/Redirect URIs                            | https://snyk.auth0.com/login/callback                                 |
| Callback/Redirect URIs (Snyk EU Tenant Customers) | https://snyk-mt-eu-prod-1.eu.auth0.com/login/callback |
| Callback/Redirect URIs (Snyk AU Tenant Customers) | https://snyk-mt-au-prod-1.au.auth0.com/login/callback |
| OAuth Grant Type                                  | Implicit (or Authorization Code)                                                                               |
