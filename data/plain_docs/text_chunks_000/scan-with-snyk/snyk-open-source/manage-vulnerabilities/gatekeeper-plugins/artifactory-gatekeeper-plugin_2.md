Snyk Enterprise Account
Artifactory Version 7.4.3 and higher

Data exchanged between Artifactory and Snyk
Artifactory transmits the package name and version to the test endpoint at the Snyk API instance. In the header, the authorization token is transmitted.
If the Artifactory installation is configured to use a proxy, Snyk will automatically use it too. Potentially, there could be an issue if the proxy is an authenticated or Kerberos proxy, but a standard, unauthenticated, forwarding proxy should work if the Artifactory installation and its underlying JVM are configured correctly with a proxy.
Snyk calls https://api.snyk.io/v1/test for the right packager manager with the right name and version.
