This page explains how to transition away from affected jobs.
Updating snyk orb and using iac test
Customers using the scan-iac job will need to switch to using snyk/scan with the iac test command. For an example, see the IaC scanning examples in the snyk-orb repository.
It is important to update the version of the snyk orb used to the latest version by updating the circleci config files. Currently, the latest Snyk orb is snyk/snyk@2.1.0 .
