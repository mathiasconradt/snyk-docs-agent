To establish trust with Snyk, add an Entity ID, an Assertion Consumer Service (ACS) URL, and a Signing certificate in your identity provider.

The Entity ID is the URL that uniquely identifies Snyk as a SAML entity or service provider. default Entity ID must be checked manually as no default is set for this.
The Assertion Consumer Service (ACS) is the endpoint on the Snyk network that listens for requests from your identity provider to enable communication between users on your network and Snyk. This URL is sometimes called a Reply URL.
The Signing certificate is the Snyk certificate, stored on your server that is needed to maintain the trust relationship. It contains the necessary encryption keys for authentication.

Use these details to set up the connection with your Identity provider (IdP):
| Details                                    | Description                                                                                                                                                             |
| ---------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Entity ID                                      | urn:auth0:snyk:saml-                                                                                                                             |
| Entity ID (Snyk EU Tenant Customers)           | urn:auth0:snyk-mt-eu-prod-1:saml-                                                                                                                |
| Entity ID (Snyk AU Tenant Customers)           | urn:auth0:snyk-mt-au-prod-1:saml-                                                                                                                |
| ACS URL                                        | https://snyk.auth0.com/login/callback?connection=saml-                                 |
| ACS URL (Snyk EU Tenant Customers)             | https://snyk-mt-eu-prod-1.eu.auth0.com/login/callback?connection=saml- |
| ACS URL (Snyk AU Tenant Customers)             | https://snyk-mt-au-prod-1.au.auth0.com/login/callback?connection=saml-  |
| Signing certificate                            | https://snyk.auth0.com/pem                                                                                                                    |
| Signing certificate (Snyk EU Tenant Customers) | https://snyk-mt-eu-prod-1.eu.auth0.com/pem?cert=connection                                                    |
| Signing certificate (Snyk AU Tenant Customers) | https://snyk-mt-au-prod-1.au.auth0.com/pem?cert=connection)                                                 |

Replace  with the name of your Snyk Group. If your Group name includes spaces, replace them with dashes. For example, if your Group name is Your Company Group, then the  value is your-company-group.

To map information from your Identity provider to Snyk, name your user attributes as follows, using the same capitalization and spelling:
| Attribute | Description                                 |
| ------------- | ----------------------------------------------- |
| email         | The user email address                          |
| name          | The name of the person to be authenticated      |
| username      | The person’s username for the identity provider |
If your user attributes do not match, note that the Snyk configuration for your SSO will take more time.
