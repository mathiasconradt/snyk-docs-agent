Fix vulnerabilities with Snyk merge requests
When viewing a Snyk test report for a Snyk Project that you own or when looking at a GitLab Project that you are watching with Snyk, you see two options for fixing a vulnerability:

Fix these vulnerabilities: generate a Snyk merge request with the minimal changes needed to fix all the Snyk Project's detected vulnerabilities.
Fix this vulnerability: generate a Snyk merge request on an individual issue that fixes the vulnerability.

You can review the vulnerabilities that will be fixed, change your selection with the checkboxes, and choose to ignore any vulnerabilities that cannot be fixed now before opening the merge request on the Open a Fix Merge Request page.

GitLab webhooks send out an event to Snyk when merge requests occur. This starts a series of other events, such as pulling GitLab project files, running the test process, and posting the results to GitLab, all of which occur on the Snyk side.
