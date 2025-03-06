Broker exposes an endpoint at /healthcheck, which can be used to monitor the health of the running application. This endpoint responds with status code 200 OK when the internal request is successful and returns  in the response body.
In the case of the Broker Client, this endpoint also reports on the status of the Broker websocket connection. If the websocket connection is not open, this endpoint responds with status code 500 Internal Server Error and  in the response body.
This status can be tested by connecting to the Broker and running http://localhost:8000/healthcheck with the default settings.
To change the location of the healthcheck endpoint, you can specify an alternative path in an environment variable:
dockerfile
ENV BROKER_HEALTHCHECK_PATH /path/to/healthcheck
