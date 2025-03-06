If there is no log after performing the preceding steps, ensure that the customer has the correct Broker token. If so, ensure that the websocket has been established. Some firewalls will block this
Review the HTTP code in the request to the on-premise Git.
404 - Not found - Ensure correct information in the docker run command.
401/403 - Check credentials.
If there is any reference to SSL, this can be caused by a self-signed certificate. Ensure you have either mounted the correct certificate or use the flag -e NODE_TLS_REJECT_UNAUTHORIZED=0.
