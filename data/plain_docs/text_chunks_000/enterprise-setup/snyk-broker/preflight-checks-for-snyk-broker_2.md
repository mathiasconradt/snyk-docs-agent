The REST API Healthcheck validates the connectivity to the Snyk REST API by performing a GET request to /rest/openapi. This check is conditional and will be executed only if high availability mode is enabled.
If it is not specified,  the API_BASE_URL is https://api.snyk.io. For additional URLs, see Regional hosting and data residency.
