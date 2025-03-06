When using the API directly, provide the API token in an Authorization header, as in the following example request, replacing API_TOKEN with your token
bash
curl --request GET \
--url "https://api.snyk.io/rest/self?version=2024-06-10" \
--header "Content-Type: application/vnd.api+json" \
--header "Authorization: token API_TOKEN"
If you are using the API through Snyk Apps, provide the access_token in an Authorization header preceded by bearer as follows:
Authorization: bearer ACCESS_TOKEN
Otherwise, a 401 Unauthorized response will be returned:
```http
HTTP/1.1 401 Unauthorized
{
    "status": "401",
    "code": "Unauthorized"
}
```
