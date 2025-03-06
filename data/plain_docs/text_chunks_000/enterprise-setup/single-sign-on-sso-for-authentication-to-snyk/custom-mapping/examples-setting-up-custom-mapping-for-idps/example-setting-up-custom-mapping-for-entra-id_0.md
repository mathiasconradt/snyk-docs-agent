The following information shows how to configure the custom mapping of roles for Entra ID (formerly Azure AD).

See the Entra ID Enterprise Application example for guidance setting up the initial Enterprise application.
Any step on the Snyk side in setting up the Enterprise application must be performed by your Snyk contact, as self-serve SSO does not accommodate custom mapping.

The following are the prerequisites for configuring App roles:

Snyk support must configure your Snyk SSO as Microsoft Entra ID (WAAD or SAML).
If you select SAML, there is a requirement to add a custom claim; the step to do that is in these instructions.
You must have an existing Azure Enterprise application and app registration connected to that SSO configuration.

The steps in configuring App roles follow.


In your App registration menu, select the name of your Enterprise Application.
App registration, select name of Enterprise Application
2.  Select App roles, then Create app role.
Select App roles, Create app role
3.  Create an app role with details as needed.\
Select the Allowed member types: Users/Groups, Applications, or Both.\
Enter the Value and Description for the selected type.\
Enable the app role.\
When you are finished, select Apply.\
Create app role
4.  In Entra ID, select your Enterprise Application.
Select Enterprise Application in Entra ID
5.  Select Users and groups; then Add user/group.\
Search and select the users and groups to add.
Select Users and groups, Add user/group
6.  Select Users and groups; from the dropdown, select a role and select Assign.\
Add assignment
7.  Repeat for all required groups and roles that should be assigned. Then verify that the list looks similar to this.\
Note that it is also possible to add multiple Snyk roles to one App role, as the payload can be interpreted as a comma-separated string. However, this can not be used in conjunction with multiple App roles, as only one syntax will be respected (string or array).
Users and group list
8. If you have configured a SAML connection, add a custom claim to pass the roles array in the SAML payload to Snyk. Select Single sign-on in the left-hand menu.
9.  Select Edit next to Attributes and Claims.
Edit attributes and claims
10. Select Add new claim add the following details, and Save.\
Name: roles\
Source: Attribute\
Source attribute: user.assignedroles


Custom claim
When you have completed these steps, reach out to your Snyk point of contact to have the configuration completed.
