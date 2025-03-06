This page explains how to set up a Ping Identity Application and connect it to Snyk to facilitate SSO.
Before configuring your Ping Identity Application to use SSO with Snyk, obtain an entity ID and a reply URL (Assertion Consumer Service URL) from Snyk. Then follow these steps:


In the left menu, select your Group, then Settings.

2.  Select SSO and copy the values under Entity ID and ACS URL or leave the browser tab open for easy access.
Group Settings: SSO
3.  Navigate to Ping Identity and select Applications in the Connections menu. Click on the plus sign to create a new application. 
Create a new Application
4.  Name your application appropriately, select SAML Application, and click Configure.
Configure as SAML Application
5.  Enter the details you copied from Snyk, the ACS URL and Entity ID, and select Save.
Add Snyk configuration details
6.  Select Configuration and download the signing certificate in PEM format.
Download signing certificate
7.  Scroll further down and copy the Single Signon Service details.
Copy the Single Signon Service details
8.  Return to the the Snyk portal and paste the single sign-in URL copied at step 2 into the Sign in URL field. \
Paste Sign in URL
9.  Open the downloaded certificate in your preferred text editor, copy the text and paste it into the Snyk X509 signing certificate field, and add the relevant domains that are supported by this SSO connection.\
Finally, verify if an IdP-initiated workflow should be enabled and then click Create Auth0 connection if you are creating a completely new connection or Save changes if you are editing an existing connection. 
Enter the Ping Identity details
10. In Ping Identity, select Attribute mappings and click the pencil to edit.
Edit attribue mappings
11. Click the cog icon and add the following attributes:
email: Email Address\
username: Username\
name: the expression user.name.given + ' ' + user.name.family; click the cog icon to enter an advanced description. 
Add attribute mappings
Add an advanced expression for the name attribute
12. In the Snyk portal, decide how new users should be treated when signing in and choose the option you would like to use: Group member, Org collaborator, or Org admin.
13. Change the profile attributes to the attribute names you entered in Ping Identity then click Save changes.\
Step 3 Snyk SSO settings
14. Verify you can log in, either with the direct URL at the top of Step 3 Snyk SSO settings (not shown in the image) or by going to the generic SSO login.
15. As a final step, enable the application and assign it to users.
Enable and assign the application to users
