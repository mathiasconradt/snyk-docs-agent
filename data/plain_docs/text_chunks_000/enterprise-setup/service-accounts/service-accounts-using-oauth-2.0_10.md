After the service account is created and signed JWT is prepared, you can retrieve an access_token using the Snyk OAuth 2.0 access token endpoint. This access token can be used the same way as a Snyk API key would be used. The request body should include the following:

grant_type: client_credentials
client_assertion_type: private_key_jwt
client_assertion: <signed JWT>

The access_token has a short time to live and must be refreshed once it expires. Many OAuth 2.0 libraries are available that will greatly simplify this process.
