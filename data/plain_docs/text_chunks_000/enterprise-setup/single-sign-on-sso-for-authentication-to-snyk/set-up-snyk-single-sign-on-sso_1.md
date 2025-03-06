The process of establishing trust between your identity provider (IdP) and Snyk requires a few steps coordinated between your SSO administrator and Snyk Support.

In your identity provider platform, enter details about the Snyk environment and user attributes.
Provide Snyk with details from your IdP.
Set up a user for testing and send Snyk the username and password for that user.
Use the link provided by Snyk to generate a payload.
After Snyk finalizes the connection, confirm the login process is working correctly.

Users are provisioned to Snyk when they log in. If an invitation is required, users may only see a list of your Organizations until the admin adds them to the appropriate Organizations.
After SSO is configured both from Snyk and your company's network, a trust relationship is established with Snyk, Auth0 (on behalf of Snyk), and your network. Any sensitive data is encrypted and stored in Auth0 only for the purposes of enabling user logins.
Each type of SSO connection requires different details for establishing trust between your identity provider and Snyk. The following sections explain those details. The details are also included in the worksheets in the Resources section at the end of this article.
