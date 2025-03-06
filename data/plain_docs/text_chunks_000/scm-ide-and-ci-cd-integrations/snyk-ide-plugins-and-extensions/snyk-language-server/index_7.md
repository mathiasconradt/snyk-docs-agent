As part of the Initialize message within initializationOptions?: LSPAny; Snyk supports the following settings:
json
{
  "activateSnykOpenSource": "true", // Enables Snyk Open Source - defaults to true
  "activateSnykCode": "false", // Enables Snyk Code, if enabled for your organization - defaults to false
  "activateSnykIac":  "true", // Enables Infrastructure as Code - defaults to true
  "insecure": "false", // Allows custom CAs (Certification Authorities)
  "endpoint":  "https://example.com", // Snyk API Endpoint required for non-default multi-tenant and single-tenant setups
  "additionalParams": "--all-projects", // Any extra params for the Snyk CLI, separated by spaces
  "additionalEnv":  "MAVEN_OPTS=-Djava.awt.headless=true;FOO=BAR", // Additional environment variables, separated by semicolons
  "path": "/usr/local/bin", // Adds to the system path used by the CLI
  "sendErrorReports":  "true", // Whether or not to report errors to Snyk - defaults to true
  "organization": "a string", // The name of your organization, e.g. the output of: curl -H "Authorization: token $(snyk config get api)"  https://api.snyk.io/v1/cli-config/settings/sast | jq .org
  "enableTelemetry":  "true", // Whether or not user analytics can be tracked
  "manageBinariesAutomatically": "true", // Whether or not CLI/LS binaries will be downloaded & updated automatically
  "cliPath":  "/a/patch/snyk-cli", // The path where the CLI can be found, or where it should be downloaded to
  "token":  "secret-token", // The Snyk token, e.g.: snyk config get api
  "automaticAuthentication": "true", // Whether or not LS will automatically authenticate on scan start (default: true)
  "enableTrustedFoldersFeature": "true", // Whether or not LS will prompt to trust a folder (default: true)
  "trustedFolders": ["/a/trusted/path", "/another/trusted/path"], // An array of folder that should be trusted
}
For all .NET Projects, Snyk recommends adding the --all-projects additional parameter.
