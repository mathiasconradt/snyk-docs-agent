CLI commands to use
The Snyk CLI has commands to create and view a .snyk file.
The snyk policy command displays the .snyk policy for a package.
The snyk ignore command modifies the .snyk file to ignore a stated issue.
snyk ignore --id='vulnerabilityID' --expiry='date-string' --reason='text string'
The following example shows using the snyk ignore command to generate a rule for ignoring the SNYK-JS-BSON-561052 vulnerability for all paths that lead to that library on disk.
snyk ignore --id='SNYK-JS-BSON-561052' --expiry='2018-04-01' --reason='testing'
