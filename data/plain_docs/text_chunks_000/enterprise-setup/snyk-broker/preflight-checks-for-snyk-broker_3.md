The Broker Client Configuration Check validates the BROKER_CLIENT_URL value to be as validated as possible. It verifies it contains a scheme (http or https) and if https, an SSL certificate+key is loaded or is possibly TLS terminated upstream.
If you are using TLS termination and you do not require a certificate+key in the Broker Client, add the environment variable BROKER_CLIENT_URL_TLS_TERMINATED to signal TLS termination in the preflight check.
There is no default.

You can use the environment variable PREFLIGHT_CHECKS_ENABLED=false to disable the Preflight Checks feature, so no checks will be executed when the Broker Client starts.
