This example shows setting up an Google Workspace SAML application and connecting it to Snyk to facilitate SSO.
For details in addition to the information provided on this page, see  Set up your own custom SAML app.
Start by logging into the Google Workspace admin area.


Go to Apps and then click Web and mobile apps.
Open Web and Mobile apps
2.  Click on Add app and choose Add custom SAML app.
Add new custom SAML app
3.  Name your application appropriately and click Continue.
Name the SAML app
4.  Download the certificate and open it in your preferred text editor.
Download signing certificate
5.  Navigate to the Snyk portal, login and from the drop down at the top left select GROUP OVERVIEW and then the cog wheel (top right corner) to get to your group settings.
Open group view in Snyk
6.  Click on SSO, scroll down to step 2, and paste the Google SSO URL from step 4 into Sign in URL and the certificate in your text editor into X509 signing certificate.\
Add the domain name(s) you are configuring this connection for in Email domains and subdomains that need SSO access.\
Verify if an IdP-initiated workflow should be enabled and then save your modifications
Enter details from Google Workspace
7.  Scroll up to step 1 and copy the Entity ID and ACS URL.
Copy details from Snyk
8.  Go back to the Google admin portal , click Continue, and paste those two values into their respective fields. Then tick Signed response.
Enter details from Snyk in Google
9.  Click Continue, add an app attribute named email tied to the Primary Email, and save the configuration.
Add email attribute
10. Enable access to your app for your users by clicking User Access, tick On for everyone, and Save. Modify organizational access as needed.
Enable SSO app for the organization
11. Finalize the setup by going back to the Snyk portal and decide how new users should be processed when signing in. Choose the option you would like to use: Group member, Org collaborator, or Org admin.
12. Then add the previously created email app attribute to both Email and Username and save the configuration. If you wish to populate the full name you may configure a custom attribute in Google Workspace.
Tie together attributes from Google to Snyk
