After the extension is installed, to authenticate follow these steps:

In the dialog that opens, set the Snyk API endpoint for custom multi-tenant or single-tenant setup, The default is https://api.snyk.io. For details, see IDE URLs. \
   \
   Multi-tenant users who do not belong to the default region will be automatically redirected to the correct domain for the email with which the user authenticated. The redirect will not occur for cases where the users are expected to use a custom URL, such as companies with single-tenant setups.

Snyk endpoint configuration

On the next page with additional information, click Finish:

Additional information and finish

The extension opens a new page in a default browser and asks you to log into your Snyk account:

Snyk login

The next page asks for your authorization for the IDE to act on your behalf. Click Grant app access.

Grant app access

After you authenticate successfully, view the confirmation message.

Successful authentication

The IDE reads and saves the authentication tokens on your local machine. Close the browser window and return to the IDE.

The analysis starts automatically. If you have problems, see OAuth 2.0 authentication does not work.

OAuth 2.0 tokens are not static and cannot be copied from the Snyk account page.
