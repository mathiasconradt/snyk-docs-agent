Configure the Snyk platform URL
By default, the Snyk CLI connects to https://api.snyk.io/. You can use the following variables to configure your connection.
SNYK_API
Specifying this variable sets the API host that will be used for Snyk requests. This is useful for regional hosting, on-premise instances, or when you are using a proxy server. If this variable is set with the http protocol, the CLI upgrades the requests to https unless SNYK_HTTP_PROTOCOL_UPGRADE is set to 0.
SNYK_HTTP_PROTOCOL_UPGRADE=0
If you set this variable to the value of 0, API and CLI requests aimed at http URLs are not upgraded to https. If the protocol is not set, the default behavior is to upgrade these requests from http to https. Setting this variable is useful, for example, for reverse proxies.
