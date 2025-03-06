Group Admins or a user with the Manage Users Organization-level permission can assign roles to other users. If you want to add a Group Admin, and your company currently does not have any Group Admins, ask Snyk support to promote at least one user.
Follow these steps to change the role of a Group or Organization user:

Log in to your Snyk account and navigate to the Group or Organization where you want to change the role of a user.
Select the Members option.
Find the member to update.
Update the role for that member using the dropdown next to the user.

Alternatively, use the endpoints Update a member in the organization and Remove a member from the organization to update the role of members in your Organization. This API call does not support updating the role of Group Members.
If the user is not already a part of your Group, you must first add that user as a member of at least one Organization; see Add members on the Manage users in Organizations page. The user then appears on the Group > Members page with the role Group Member, allowing you to change the role to Group Admin or Group Viewer.
