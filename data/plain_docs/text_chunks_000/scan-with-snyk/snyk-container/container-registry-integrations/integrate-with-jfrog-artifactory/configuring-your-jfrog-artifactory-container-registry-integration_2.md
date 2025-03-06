Log in to your Snyk account.
Navigate to Integrations. From the list of integrations, select Artifactory. \
   The configuration page opens.
Enter your credentials:
Username and Password  - use your Artifactory login credentials. If you're using SSO configuration, you must generate an access token in Artifactory and use the token details to login.
Container registry name - the full registry URL: <subdomain>.jfrog.io/artifactory/api/docker/<repo-name>

Artifactory account credentials

Click Save Changes.  A confirmation appears.


To set up the integration, the Artifactory credentials need, at minimum, read permissions to the relevant Artifactory repository.

Snyk tests the connection values and the page reloads, now displaying integration details as you entered them. At the top of the screen, a confirmation message indicates that the details were saved. If the connection fails, a notification appears.
