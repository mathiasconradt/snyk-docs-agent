Ensure you are using the latest version of the IDE plugins. The following specifies the minimum versions required:\
VSCode - 1.2.18\
Visual Studio - 1.1.21\
IntelliJ - 2.4.32

Snyk IDE extensions have modifiable options similar to the CLI and must be configured to use the appropriate endpoint. In the extension settings for Snyk in your IDE, set Custom Endpoint to the appropriate value for SNYK-US-02, SNYK-EU-01, and SNYK-AU-01 as follows.
SNYK-US-01: https://api.snyk.io (no configuration required)
SNYK-US-02: https://api.us.snyk.io
SNYK-EU-01: https://api.eu.snyk.io
SNYK-AU-01 : https://api.au.snyk.io
Multi-tenant users who do not belong to the default region will be automatically redirected to the correct domain for the email with which the user authenticated. The redirect will not occur for cases where the users are expected to use a custom URL, such as companies with single-tenant setups.
