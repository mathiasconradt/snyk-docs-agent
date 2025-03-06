Navigate to Applications -> Applications and click on the Snyk app you configured.
Select General Tab -> Edit SAML Settings and click next to go to the Configure SAML step.
Add an Attribute Statement named “roles” of an unspecified type.

Select Attribute Statements and set roles as the Name field with Name format Unspecified and the Value in the following expression:
Arrays.flatten(appuser.snyk_orgs)
5. Reach out to your Snyk point of contact so they can complete the configuration.
