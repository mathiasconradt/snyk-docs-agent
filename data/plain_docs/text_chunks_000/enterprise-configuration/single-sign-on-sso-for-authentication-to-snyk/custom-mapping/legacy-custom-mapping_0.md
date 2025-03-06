To configure this option, send the roles array within the SAML attributes or OIDC claims to adhere to one of the following patterns:
snyk-groupadmin

This role mapping assigns users with the Group Admin role.
groupadmin configures all users with this role as a Group Admin all Group(s) that the user is assigned to, which grants Organization Admin permissions to all Organizations that fall under the Group(s).

snyk-groupviewer

This role mapping assigns users with the Group Viewer role and grants read-only access to the Group, reports, and all Organizations associated with the Group.

snyk-

This role mapping assigns users with the Org Collaborator roles for all Organizations underneath the specified Group(s).
groupID is the ID string for a group in Snyk. This can be found in the snyk URL at the Group level: https://app.snyk.io/group/<Group ID> or Group dropdown -> Settings -> General -> Group ID.

snyk--

This role mapping assigns users with the specified role of Collaborator or Admin or Custom Role for the Snyk Organization specified in orgslug.
orgslug is the unique identifier of the Organization name in Snyk.
How to find the orgslug: https://app.snyk.io/org/ OR by using the endpoint List all organizations in a group.
The orgslug is the name of the Organization in most cases; however, there may be exceptions.
orgslug can be a value of up to 60 characters.
role:
If you are using standard roles,  should be either collaborator or admin.
Custom Role can also be used for  and should use the normalized name. See Roles in custom SSO for more details.


Users must only have one role mapped per Organization. Mapping multiple roles for an Organization is not supported and can lead to unexpected behavior.
