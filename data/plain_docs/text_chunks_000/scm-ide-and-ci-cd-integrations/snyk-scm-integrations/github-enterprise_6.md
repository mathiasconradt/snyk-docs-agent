In Snyk, navigate to the Integrations page and click the GitHub Enterprise card.
Enter your GitHub Enterprise URL and the personal access token (PAT) for the service account you created, and Save your changes. After Snyk has successfully connected to the GitHub instance, the list of available repositories displays for your selection.
If your GitHub Enterprise organization enforces SAML/SSO, select Configure SSO next to the PAT in GitHub after the PAT has been created.\
   Occasionally, SSO is enforced in your GitHub Enterprise organizations after a PAT and Integration are configured. If this happens, any Projects that have already been imported show in Snyk, but retests, PR Checks, and so on, will not be performed. To fix this, check the Configure SSO settings to ensure the GitHub Enterprise organization is Authorized.\
   If the organization is showing as Authorized, but the issue still persists, try de-authorizing the organization and then re-authorizing.


To use the integration with GitHub Enterprise Cloud, add the URL https://api.github.com. To integrate with a self-hosted GitHub Enterprise, add the URL https://your.github-enterprise.host in step two of PAT authorization.
Ensure that there are no trailing characters such as / following the url. An integration with trailing characters in the URL may connect successfully but provide incorrect links back to the GitHub files.


If the PAT token changes or expires in GitHub, the integration with Snyk will not function. To resolve this, update the token in the Snyk GitHub Enterprise Integration settings.
