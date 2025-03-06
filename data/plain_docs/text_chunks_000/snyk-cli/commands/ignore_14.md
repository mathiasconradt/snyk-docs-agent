$ snyk ignore --id=npm:tough-cookie:20160722
Ignore a specific file until 2031-01-20
Ignore a specific file.
The rule created in the .snyk file is used by snyk test --unmanaged until 2031-01-20, with a description as a reference for the future.
$ snyk ignore --file-path='./deps/curl-7.58.0/src/tool_msgs.c' --expiry='2031-01-20' --reason='patched file'
