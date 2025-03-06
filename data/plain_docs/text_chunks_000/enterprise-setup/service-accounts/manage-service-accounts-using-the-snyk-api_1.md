id - The ID of the service account.
name - A human-friendly name for the service account.
auth_type - Authentication strategy for the service account. The following options are available:

api_key - The service account uses a regular Snyk API key.
oauth_client_secret - The service account uses an OAuth 2.0 access token, which is retrieved with a client secret.
oauth_private_key_jwt - The service account uses an OAuth 2.0 access token, which is retrieved with a JWT signed with a private key.

role_id - The role of the service account, which defines the permissions it has. Available roles can be found using the endpoint List all roles in a group.
jwks_url - A JWKs URL hosting your public keys used to verify signed JWT requests; this must be https. Required only when auth_type is oauth_private_key_jwt.
access_token_ttl_seconds - The time, in seconds, that a generated access token will be valid for. Defaults to 1 hour if unset. Required only when auth_type is oauth_client_secret or oauth_private_key_jwt.
