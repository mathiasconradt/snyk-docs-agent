After the service account is created, you can retrieve an access_token through the OAuth 2.0 endpoint Request an access token using the client_secret. The body format and Content-Type header must be form-urlencoded.
You can use anaccess_token the same way as you would use a Snyk API key, but with the Authorization: bearer $access_token header or the SNYK_OAUTH_TOKEN environment variable with the Snyk CLI.
The access_token has a short time-to-live and must be refreshed once it expires. There are many OAuth 2.0 libraries available that greatly simplify this process.
