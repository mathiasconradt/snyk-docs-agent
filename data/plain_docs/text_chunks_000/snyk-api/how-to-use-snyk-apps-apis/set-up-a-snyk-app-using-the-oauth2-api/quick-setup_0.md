Snyk Apps uses the Authorization code with the Proof Key for Code Exchange (PKCE) OAuth2 flow. The key endpoints are:

Authorization: /oauth2/authorize
Token: /oauth2/token

The Snyk Apps authorization flow should work with any popular OAuth2-compatible client library, providing it supports PKCE.
The basic steps to set up a Snyk App using the OAuth2 API follow:

Generate a code verifier and code challenge.
Request the authorization code by directing the installing user to /oauth2/authorize with the generated code challenge, as well as all other required OAuth2 parameters.
The user is asked to approve the request, selecting the Organization or Group to which the Snyk App is being installed.
The user is returned to the redirect URI defined by the Snyk App with an authorization code. You  have to extract the authorization code from the user request
Exchange the authorization code for an access token and refresh the token pair, using the code verifier generated in the first step.

The following pages go into more detail about each step.
