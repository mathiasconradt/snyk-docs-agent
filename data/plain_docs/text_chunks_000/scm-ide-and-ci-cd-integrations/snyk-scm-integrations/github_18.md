The GitHub SCM integration leverages the OAuth app integration. If you integrated GitHub without using Snyk Broker, you can disconnect it by following these steps:

In GitHub, log in to the GitHub account that you used to create the integration.
Go to your GitHub account settings and select the Applications option in the left sidebar.
Select the Authorized OAuth Apps tab.\
   You can also reach the Authorized OAuth Apps tab directly.
Find the Snyk entry, click the three (3) dots on the right, and select Revoke.

Revoke OAuth authorization
Revoking this access effectively disconnects Snyk’s access to that GitHub account.

Existing imported snapshots will persist in Snyk and continue to be re-scanned based on the existing snapshots until deleted.
Snyk will no longer be able to import new Projects from the GitHub integration and will no longer re-scan on new code merges.

In addition, you must confirm that Snyk is not enabled on any existing Branch protection rules.

Note that branch protection is active only after a PR has been raised.


From the main page of your GitHub repository, go to Settings > Branches > Branch protection rules.
Ensure there are no Status checks found in the last week for this repository.


A disconnected GitHub integration will still appear as configured in the Integrations menu of the Snyk UI. However, clicking on the integration settings will show that it is not connected. In this case, the "configured" integration can safely be ignored.
