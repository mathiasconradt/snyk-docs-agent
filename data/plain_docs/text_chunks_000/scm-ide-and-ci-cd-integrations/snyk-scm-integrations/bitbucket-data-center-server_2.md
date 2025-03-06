To give Snyk access to your Bitbucket DC/Server account, set up a dedicated service account in Bitbucket DC/Server with admin permissions.\
   Visit Bitbucket Server documentation to learn more about creating users.\
   Ensure the newly-created user has Admin permissions to all the repositories you need to monitor with Snyk.
In Snyk, navigate to the Integrations page and click on the Bitbucket Server card.
Enter your Bitbucket DC/Server URL and the username and password for the service account you created. Alternatively, you can create a personal access token and use it instead of a password.
If your Bitbucket DC/Server instance has Basic Auth disabled, you must use a personal access token.
Specify x-access-token for the username, and provide the personal access token instead of a password.
Save your changes.\
   Snyk connects to your Bitbucket DC/Server instance.\
   When the connection succeeds, a confirmation message appears on your integrations screen.
