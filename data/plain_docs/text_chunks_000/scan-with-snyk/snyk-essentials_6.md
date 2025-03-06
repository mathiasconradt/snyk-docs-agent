You can initiate a scan from the Web UI, the CLI, the API, or with PR Checks. See Start scanning for more details.
If you initiate your scans using the CLI, you might encounter one of the following situations:

If you have a .git folder available in the directory that the CLI is scanning, then the git remoteurl is picked up automatically for Snyk Open Source, Snyk Container, and Snyk IaC. 


Snyk Code does not automatically pick up the git remoteurl, even if the .git folder is available in the directory scanned by the CLI.


If you do not have a .git folder available in the directory that the CLI is scanning, you can use different test or monitor commands to achieve the same result:
snyk monitor, for Snyk Open Source
snyk iac test - also requires the --report command
snyk container monitor - momentarily, no options are available.
snyk code test - momentarily, no options are available.
