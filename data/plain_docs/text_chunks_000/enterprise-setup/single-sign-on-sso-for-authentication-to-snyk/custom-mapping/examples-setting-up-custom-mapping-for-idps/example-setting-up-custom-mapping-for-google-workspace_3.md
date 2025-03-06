To expose these roles in the SAML payload, you must modify the attributes in the SAML attribute mapping:


Log in to your Google Workspace Admin area and go to Apps and then Web and mobile apps and open your application.
Open Google SAML app
2. Click on SAML attribute mapping and then ADD MAPPING.
3. Click Select field and scroll to the bottom until you find Snyk-SSO - roles and select it.
4.  In the App attributes value field, enter roles and click Save.
Adding custom mapping app attribute


After this, log in as a user and have your Snyk contact validate the SAML payload and finalize the setup in the Snyk backend.
