inline mode for snyk delta
This is a simple example: snyk test --json --print-deps | snyk-delta
This example possibly points to a specific snapshot by specifying Organization and Project coordinates.
snyk test --json --print-deps | snyk-delta --baselineOrg xxx --baselineProject xxx
