This example shows setting up a SAML application in OneLogin and connecting this to Snyk to facilitate SSO. To configure your OneLogin to use SSO with Snyk, start by obtaining an entity ID and a reply URL (Assertion Consumer Service URL) from Snyk.
1. From the dropdown at the top left, select GROUP OVERVIEW and then the cog icon (top right corner) to get to your group settings.
Select group overview
2. Click on SSO and copy the values under Entity ID and ACS URL or leave the browser tab open for easy access.
3. Navigate to OneLogin, open the applications menu, click on Applications, and then on the Add App button on the top right.
Add app
4. Filter by “saml” and select the SAML Custom Connector (Advanced) app.
Select SAML Cusotm Connector (Advanced) app
5. Enter a Display Name for the app, for example, Snyk. Optionally, pick an icon. You can find the Snyk logo on Snyk’s press kit page.
Enter a display name and pick an icon
6. After the app is saved, go to the configuration page and enter the Audience (EntityID), ACS URL, and ACS URL Validator. Use the ACS URL value here as well. Copy the  EntityID and ACS URL from step 2.
Enter application details
7. Go to the parameters section and add a new parameter, as Snyk needs the email address as the email attribute in the SAML response. Click the + icon.
Add a new parameter
For the field name, use email. Make sure the checkbox Include in SAML assertion is checked. Save.
Enter email for the field name
On the next screen, select Email in the Value dropdown list. Save.
Select Email form the value dropdown
Repeat the same steps for the name attribute.
Enter name for the field name
Add the name parameter
8. Go to the SSO section, download the certificate, and make a note of the SAML 2.0 Endpoint (HTTP) value.
SAML 2.o Endpoint (HTTP) value
9. To enable the app for users, go to the Users > Roles section and create a new role called Snyk.\
Be sure to select the Snyk SAML app as an enabled role app. Save.\
Then, assign this role to all the users that should be able to use Snyk.
Create Snyk role
10. Go back to the Snyk portal, scroll to step 2, make a note ofenter the details from step 8, including the domain(s) you wish to use over the SSO connection.\
Verify if an IdP-initiated workflow should be enabled and then click Create Auth0 connection.
Enter SAML attributes in the Snyk portal
11. Scroll to step 3 and determine how new users should be treated when signing in.\
Choose the option you would like to use: Group member, Org collaborator, or Org admin.\
Finally, enter the profile attributes as you configured them in OneLogin (email, name, nickname), click Save changes, and verify you can log in, either with the direct URL at the top of step 3 or by going to the generic SSO login.
Enter profile attributes
