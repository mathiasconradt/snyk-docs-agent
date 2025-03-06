To select the right method for you for removing repositories from Snyk testing, consider what will happen in each of the following actions:

Deactivating an imported repository will:
Remove the webhook from Snyk to the SCM repository.
Disable pull request tests for new vulnerabilities.
Disable the Fix Pull Requests option from being opened for newly discovered vulnerabilities
Disable recurring tests; email alerts about newly discovered vulnerabilities will be turned off.
Deleting a Snyk Project or an imported repository will:
Delete the entire Project or repository and all its historical snapshot data from Snyk.
Remove the webhook from the SCM repository.


Deleting a Snyk Project or an imported repository will not have any effect on your source code.
If you want to remove specific directories or files from the Snyk Code test, use the exclude option in the .snyk file.
