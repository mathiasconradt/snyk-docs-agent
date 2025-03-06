By default Snyk CLI tries to detect and apply proxy authentication.
If the proxy server requests proxy authentication (as indicated by a PROXY-AUTHENTICATE response header), and both server and CLI support the same authentication mechanism, the CLI authenticates as the user who is currently logged in to the operating system (SSO).
This is supported for the following authentication mechanism:

Negotiate
Kerberos (on all OS)
NTLM (Windows NT LAN Manager)
