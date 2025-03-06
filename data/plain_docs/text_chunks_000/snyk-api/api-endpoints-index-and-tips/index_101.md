The V1 Reporting endpoints support only Snyk legacy reporting, not the latest release. Thus, these endpoints are not available in single-tenant implementations or in the multi-tenant regions US-02, EU, and AU. In those regions, use the Issues REST API.
The V1 Reporting API underlies Snyk legacy reporting. Using the V1 Reporting API, you can find answers to questions like how many issues your Organization has, or how many tests have been conducted in a given time period.
The rate limit is up to 70 requests per minute, per user. For all requests above the limit, the response will have the status code 429: Too many requests, until requests stop for the duration of the rate-limiting interval (one minute). For more information see Rate limiting for V1 API.
More information: Legacy reports;\
Dependencies and licenses
