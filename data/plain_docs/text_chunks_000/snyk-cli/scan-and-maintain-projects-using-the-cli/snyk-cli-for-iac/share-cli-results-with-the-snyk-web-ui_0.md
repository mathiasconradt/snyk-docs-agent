You can use the CLI snyk iac test command to address known configuration issues.
To see these issues displayed in the Snyk Web UI, run the following CLI command:
snyk iac test myproject --report

Using Custom rules and the Share Results functionality together is not currently supported.
Snyk does not share any file contents over the network, only the required metadata for the configuration issues that were just scanned.
