User authentication for Snyk Apps is done by way of a webpage URL containing query parameters that match up with our Snyk App's data. We'll need to replace the query parameter values in this URL and send users to the final link in a web browser. From there they can grant account access to the Snyk App.
Once access has been provisioned, the user will be kicked back to our app's registered callbackURL, which we defined as http://localhost:3000/callback.
Essentially, our app needs to generate a link like the following and then send the user to it when it's time to authorize:
https://app.snyk.io/oauth2/authorize?response_type=code&client_id=&redirect_uri=&state=&code_challenge=&code_challenge_method=S256
Though some of the query parameters may be somewhat obvious, we will go over them. We're going to modify our Snyk App to generate this URL for our users.

redirect_uri: Optional values must match one of the values sent with our registration command from Registering our app with Snyk. If not passed then the first value on the Snyk App is assumed.
state: This is used to carry any App-specific state from this /authorize call to the callback on the redirect_uri (such as a user's ID). It must be verified in our callback to prevent CSRF attacks.
code_challenge: A URL-safe base64-encodes string of the SHA256 hash of a code verifier. The code verifier is a highly randomized string stored alongside the app side before calling /authorize, then sent when exchanging the returned authorization code for a token pair. This is part of Proof Key for Code Exchange (PKCE) which helps prevent authorization code interception attacks.

Once a connection is complete, the user is redirected to the provided redirect URI (our /callback route in this case) with query string parameters code and state added on, which are necessary for the next steps of authorization.
That next step involves taking the authorization code received as a query parameter in the response of the previous step and turning it into an access token. To do this, a Snyk App makes a POST request to the token endpoint: https://api.snyk.io/oauth2/token. That POST request needs some specific data in its request body, including the authorization code, client id, client secret, code_verifier and so on.
When successful, that POST request's response contains everything a Snyk App needs to communicate with Snyk on behalf of the authorizing user, namely, a refresh_token and an access token.
The access token gets used for future API calls and has a much shorter expiry than the refresh token. The refresh token can be used only one time to get a new access token when it expires. In other words, the refresh_token will no longer be usable if its own expiry time passes or if it is used to refresh the access_token. Ultimately, this means that our Snyk App will need to make frequent API calls to perform refresh_token exchanges.

Both of these tokens should be encrypted before storing them.
