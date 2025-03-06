Steps to authenticate using OAuth 2.0 protocol
When you are using the CLI locally, Snyk recommends that you use the OAuth 2.0 protocol.  Follow these steps:

Run the snyk auth CLI command.
Log in if you are prompted to do so.
The next page asks for your authorization for the CLI to act on your behalf. Click Grant app access.
After you authenticate successfully, view the confirmation message; then close the browser window and return to the CLI in the terminal. 

After authentication is granted, a pair of access and refresh tokens is stored locally for future use. \
\
Multi-tenant users who do not belong to the default region will be automatically redirected to the correct domain for the email with which the user authenticated. The redirect will not occur for cases where the users are expected to use a custom URL, such as companies with single-tenant setups.
If you have problems, see OAuth 2.0 authentication does not work.

OAuth 2.0 tokens are not static. You cannot copy these tokens from your Snyk account page.
