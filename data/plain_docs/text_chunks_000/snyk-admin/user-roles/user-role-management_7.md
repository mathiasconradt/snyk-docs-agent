Assign roles to users

You can use the API to update the role assigned to a user in an Organization. For details, see the endpoint Update a member's role in the organization.

Users with Role management permissions can assign roles to users across all Organizations in the Group.
Select an Organization and then select the Members option.
For any member Name except a Group Admin, you can select the dropdown next to the current role and choose any role to assign that role to the member.
Select member role
\
You can invite new members to the Organization with an assigned role.
Click Add members > Invite new members and select the role to assign from the New Members join as dropdown.
Add members to your Organization
Click the Add members button > Add existing members to promote current Group Members to an Organization-specific role.

Snyk prevents users from assigning roles to others with more privileges than those the user who is assigning roles already has. If you try to update the role of a member, invite a new member, or add an existing member with a role that has more privileges than you have, you will see the error Cannot assign higher privilege role.
