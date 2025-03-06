Single Sign-On (SSO) is available except for Self-Serve Single Sign-On (SSO). All SSO setups are managed by Snyk. Some setup steps for Single Sign-On are slightly different:

The service provider is Okta rather than Auth0.
The ACS URL and Entity ID and certificate will be different per connection and thus will not match the Snyk Single Sign-On documentation.
To get the ACS Url, Entity ID, and cert, Snyk will need to part-provision the connection in Okta.

See Single Sign-On (SSO) for authentication to Snyk for details.
