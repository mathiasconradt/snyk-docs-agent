This page explains how to configure the custom mapping of roles for Ping Identity using Legacy custom mapping.

This guide assumes your Ping Identity application is configured and functional.


Any step on the Snyk side in setting up the Enterprise application must be performed by your Snyk contact, as self-serve SSO does not accommodate custom mapping.



In your application configuration, select Attribute mappings and click the pencil to edit the attributes.
Edit mapping attributes
2.  Select +Add and enter the following attribute, then save the change, \
roles: Group Names\
Add roles array
3.  In the left menu, select Identities/Groups and add the Snyk Groups needed following the syntax explained on the Cusom Mapping Option page. 
Adding an example Group
4. If you so not select a Population at the bottom of the previous screen, ensure that you assign the Group to the user(s) who should be part of the role assignment in Snyk. If you select a Population, all users in that population will inherit the permissions of the assigned Snyk role.
5. To finalize the process, reach out to your Snyk contact to validate that the SAML payload contains the role array and to enable the custom mapping feature.
