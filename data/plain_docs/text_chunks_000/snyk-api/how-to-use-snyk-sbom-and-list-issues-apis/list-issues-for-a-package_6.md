The following are error states that you may receive when using the API. If you experience issues not covered here or are having trouble resolving these, contact your Solution Engineer or Technical Success Manager, or submit a request to Snyk Support.
Invalid PURL\
400\
Ensure that the purl specification you provided is a valid purl. For more information, see the Package URL specification.
Unsupported Ecosystem\
400\
Ensure that the package type is one of the supported purl types.
Package requested without namespace\
400\
Ensure you specify a namespace in the package URL and then try again. For more information, see the Package URL specification.
Purl component not supported\
400\
Remove the component that is not supported and try to make the request again. The endpoint accepts only particular components. For more information, see the Package URL specification.
Your organization is not authorized to perform this action.\
403\
To get access, contact your Solutions Engineer or Technical Success Manager, or the administrator for your team.
Rate limit exceeded\
429\
180 requests per minute per user are permitted on this API endpoint. If you exceed this volume, you will receive a 429 error response code.
Invalid pagination parameters\
400\
The limit and offset supplied query parameters must be as follows:

Limit > 0 and <= 1000
Offset >= 0

The default parameters for this request are limit = 1000, and offset >= 0.
Authorization request failure\
500\
This issue is unexpected, and the service should recover quickly. If it does not, submit a request to Snyk Support.
Internal server error\
500\
This issue is unexpected, and the service should recover quickly. If it does not, submit a request to Snyk Support.
Vulnerability service unavailable\
503\
This issue is unexpected, and the service should recover quickly. If it does not, submit a request to Snyk Support.
Vulnerability service error\
500\
This issue is unexpected, and the service should recover quickly. If it does not, submit a request to Snyk Support.
An example of this error response follows:
json
"jsonapi": {
    "version": "1.0"
},
"errors": [{
    "id": "8139dce7-eeb4-404b-be0e-5e4c15004972",
    "detail": "Unsupported Ecosystem",
    "status": "400"
}]
