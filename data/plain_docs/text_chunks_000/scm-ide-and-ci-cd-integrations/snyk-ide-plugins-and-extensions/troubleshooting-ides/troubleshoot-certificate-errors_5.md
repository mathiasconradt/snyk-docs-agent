Try using thewin-ca extension to make Trusted Root Certificates available to the extension.
See win-ca.
Another option is using environment variables; see How to add custom certificate authority (CA) to nodejs .
The last resort is to disable Certificate checks. Add --insecure to additional arguments to disable checks in the CLI, and uncheck the setting to use a strict proxy (http.proxyStrictSSL) in VSCode to disable certificate checks in https calls.
--inseucure argument
 
Proxy settings
