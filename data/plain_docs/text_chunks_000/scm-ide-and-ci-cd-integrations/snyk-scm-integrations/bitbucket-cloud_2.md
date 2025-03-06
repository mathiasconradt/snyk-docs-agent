Admin permissions are required; however, Snyk's access is ultimately limited by the permissions assigned to the App Password.


To give Snyk access to your Bitbucket account, set up a dedicated service account in Bitbucket with admin permissions. See the Bitbucket documentation to learn more about adding users to a workspace.\
   The newly created user must have Admin permissions to all the repositories you need to monitor with Snyk.
In Snyk, go to the Integrations page, open the Bitbucket Cloud card, and configure the Account credentials.
In the Account credentials > Creating an app password section in Snyk, use the link Create an App password to jump to your Bitbucket Cloud account.

Follow the Bitbucket procedure to set up an account with the following permissions:

Account: Email & Read
Workspace membership: Read
Projects: Read
Repositories: Read & Write
Pull requests: Read & Write
Webhooks: Read & Write

See the Bitbucket documentation for more details about the procedure.
5. Enter the username and the App Password for the Bitbucket account you created and Save your changes.\
   You can find your username under the Bitbucket Personal settings.\
   Snyk connects to your Bitbucket Cloud account. When the connection succeeds, the confirmation message "Bitbucket Cloud settings successfully updated" appears.
