The process of establishing trust between your identity provider (IdP) and Snyk requires that the Group Admin do the following:

Configure your identity provider (IdP) by using the details about the Snyk environment displayed on-screen and user attributes.
Enter SAML attributes from your identity provider(IdP) on the Group SSO Settings page.
Configure Snyk SSO settings, choosing how you want your members to log in.
Verify SSO login to confirm the login process is working correctly.


After SSO is configured both from Snyk and your company's network, a trust relationship is established with Snyk, Auth0 (on behalf of Snyk), and your network. Any sensitive data is encrypted and stored in Auth0 only for the purposes of enabling user logins.
Although not all the examples following this page cover verifying the Snyk signature, it is recommended that you improve the trust relationship and ensure integrity even further. Follow your respective IdP's documentation to add SP signature verification where possible.
