The Broker Client exposes an endpoint at /systemcheck, which can be used to validate the connectivity and credentials of the brokered service, Git or another SCM, or the brokered container registry . This endpoint causes the Broker Client to make a request to a preconfigured URL and report on the success of the request. The supported configuration is:

BROKER_CLIENT_VALIDATION_URL - the URL to which the request will be made.
BROKER_CLIENT_VALIDATION_AUTHORIZATION_HEADER - [optional] the Authorization header value of the request. Mutually exclusive with BROKER_CLIENT_VALIDATION_BASIC_AUTH.
BROKER_CLIENT_VALIDATION_BASIC_AUTH - [optional] the basic auth credentials (username:password) to be base64 encoded and placed in the Authorization header value of the request. Mutually exclusive with BROKER_CLIENT_VALIDATION_AUTHORIZATION_HEADER.
BROKER_CLIENT_VALIDATION_METHOD - [optional] the HTTP method of the request (default is GET).
BROKER_CLIENT_VALIDATION_TIMEOUT_MS - [optional] the request timeout in milliseconds (default is 5000 ms).

This endpoint responds with status code 200 OK when the internal request is successful, and returns  in the response body, one object in the array per credential; see Credential pooling. If the internal request fails, this endpoint responds with status code 500 Internal Server Error and  in the response body.
This status can be tested by connecting to the Broker and running http://localhost:8000/systemcheck with the default settings.
Example that enables the /systemcheck capability to verify connectivity between broker and Nexus:\
-e BROKER_CLIENT_VALIDATION_URL=https://[username:password]@acme.com/service/rest/v1/status[/check] /\
snyk/broker:nexus
To change the location of the systemcheck endpoint, you can specify an alternative path in an environment variable:
dockerfile
ENV BROKER_SYSTEMCHECK_PATH /path/to/systemcheck

Snyk Broker does not support authentication with mTLS method.
