The following response code indicates success.
200 OK
The SBOM document was successfully generated. The response body contains the document in the requested format.
The following are error states that you may receive when using the API. If you experience issues not covered here or are having trouble resolving these, contact your Solution Engineer or Technical Success Manager or submit a request to Snyk Support.
401 Unauthorized
The authentication method, API token for Bearer token, was invalid. Check that you set the Authorization header correctly.
403 Forbidden
You do not have the permissions required to make the request. This can happen if you are not part of the requested Organization, your Organization is not entitled to use the Snyk API, or you do not have sufficient read access to the requested Project.
429 Too Many Requests
Since the Snyk API is rate-limited, an excessive number of requests will eventually start to be rejected. Wait before making any further requests.
500 Internal Server Error
The service encountered an internal system error.
