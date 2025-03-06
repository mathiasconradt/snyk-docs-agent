This example shows how to configure user roles after you have configured OneLogin SSO for Snyk.
OneLogin has the concept of groups and roles. However, OneLogin does not support the assignment of multiple groups to a user. 
Therefore, roles will be assigned to users directly instead of indirectly through groups.

In OneLogin, go to the Users and then to the Roles section and create the roles following the naming convention outlined for custom mapping. Each role should have the Snyk SAML app enabled as the role app.\
   Assign the users to their roles as needed.

OneLogin Roles section

To transfer the user roles in the SAML assertion to Snyk, go to Applications, select the Snyk SAML app, and select the Parameters section on the left.\

OneLogin Applications Parameters


Create a new parameter named roles, with both checkboxes  Include in SAML assertion and Multi-value parameter checked. Save.\


On the next screen, select User Roles as the default value and Semicolon Delimited Output (Multi-value output).\
    Ensure that the checkbox Include in SAML assertion is checked. Save.\
OneLogin Edit Field roles
