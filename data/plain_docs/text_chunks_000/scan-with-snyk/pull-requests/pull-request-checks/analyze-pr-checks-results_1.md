Check the status of the PR Checks results in the integrated SCM to identify security issues that need to be addressed before merging a pull request.
The following status indicators can appear for your Snyk PR checks in the integrated SCM:
Result statusDescriptionSuccess/PassedNo issues were discovered and the manifest file was not changed.PendingThe PR Checks are still running.Failed/Issues foundSecurity issues were identified in the pull request. In this scenario, you need to manually set the result status to Passed.ErrorOut-of-sync package.json and package.lock files, failure to find or to read the manifest file.CanceledThe test limit has been reached.

For false positive or false negative results, see Troubleshooting PR Checks.
