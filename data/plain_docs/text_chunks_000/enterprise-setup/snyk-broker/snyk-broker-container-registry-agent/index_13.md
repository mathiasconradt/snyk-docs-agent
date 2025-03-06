The LOG_LEVEL environment variable can be set to control the desired log level of the Container Registry Agent and Broker Client. The default value is info. The accepted values are debug, info, warn and error.

Enabling debugging for third-party libraries is not recommended for production environments, as this may expose sensitive information in logs not maintained by Snyk, for example, headers of HTTP requests.

To enable debug logs from the third-party HTTP request library Needle, set the environment variable NODE_DEBUG=needle.
To enable debug logs from all third-party libraries, set the environment variables DEBUG=* and NODE_DEBUG=*.
The DEBUG environment variable controls the Debug package output. The NODE_DEBUG environment variable controls Node.js util.debuglog output.
