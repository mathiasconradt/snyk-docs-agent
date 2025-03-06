A test is counted each time you run one of the following commands:

For Snyk Open Source: snyk test or snyk monitor.
For Snyk Container: snyk container test or snyk container monitor.
For Snyk Code: snyk code test.

For Snyk IaC, the command is snyk iac test. Since this can scan multiple Projects, a scan is counted for every Project being scanned. For example, If a snyk iac test command scans 11 Projects, the count is increased by 11.
