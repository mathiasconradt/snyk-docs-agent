The API does not support using service accounts as the inviting user or provisioned user.


The user being provisioned must not already exist in the Snyk system.
The inviting user must call the API using a personal token.
The Snyk Group to which the Organizations belong should have Single Sign On (SSO) configured.
Both the inviting user and the provisioned user must log in using SSO.
The inviting user should have the permission Provision Users to invoke these calls. All Group and Org Admins, by default, have this permission.

Enable Provision Users permission
