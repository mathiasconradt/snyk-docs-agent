Feature availability\
Service accounts using OAuth 2.0 are available only with Enterprise plans through the Snyk  API. For more information, see Manage service accounts using the Snyk API.

You can create service accounts that authenticate with the Auth 2.0 client_credentials grant flow rather than with the Snyk API key. OAuth 2.0 access tokens can be used the same way a Snyk API key would be used, but they have the added security of a short time-to-live (TTL) and can be automatically refreshed.
