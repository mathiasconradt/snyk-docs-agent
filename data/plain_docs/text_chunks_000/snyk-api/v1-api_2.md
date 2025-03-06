To use this API, you must get your token from Snyk. You can find the token in your personal account settings after you register with Snyk and log in. For details, see Authentication for API. 
Provide the token in an Authorization header with the token, preceded by token:
Authorization: token API_KEY
Otherwise, a 401 "Unauthorized" response will be returned.
```
HTTP/1.1 401 Unauthorized
{
    "code": 401,
    "error": "Not authorised",
    "message": "Not authorised"
}
```
