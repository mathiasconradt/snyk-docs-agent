By default, the log level of the Broker is set to INFO. All SCM responses, regardless of HTTP status code, are logged by the Broker Client. Set the following environment variables to alter the logging behavior:
| Key               | Default | Notes                                                          |
| ----------------- | ------- | -------------------------------------------------------------- |
| LOG_LEVEL        | info    | Set to "debug" for all logs.                                   |
| LOG_ENABLE_BODY | false   | Set to "true" to include the response body in the Client logs. |
To keep the logs concise in normal operation, Snyk produces minimal information on the INFO level, tracking the requests coming from Snyk into the client as well as the downstream request made to the targeted system, Github, Gitlab, JIRA, and so on, and logging the url hit and the response code received.\
When you set LOG_INFO_VERBOSE="true", the environment variable will add the headers in these log lines without requiring that you use debug.

If you override the default logging, some logs may be provided by other processes such as API requests, and may list credentials. Before you send any Broker logs with increased logging enabled, check for any passwords or tokens and redact them in bulk.
