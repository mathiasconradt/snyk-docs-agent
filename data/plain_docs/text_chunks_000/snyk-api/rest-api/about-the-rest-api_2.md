The Snyk REST API generally adheres to the JSON:API standard, with some caveats. JSON:API is an opinionated specification for how a client should request and modify resources and how a server should respond to requests.
When using the REST API, send all requests which contain data with the header:
Content-Type: application/vnd.api+json
Otherwise a 400 "Bad Request" response will be returned.
```json
HTTP/1.1 400 Bad Request
{
    "errors": [
        {
            "status": "400",
            "detail": "Client request did not conform to OpenAPI specification",
            ...
        }
    ]
}
```
