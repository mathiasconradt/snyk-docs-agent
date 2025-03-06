Users with the Group-level View, Create, and Edit service account permissions can set up new service accounts for their Organization and assign a role.
Select an Organization and navigate to Settings > Service Accounts. Provide a name, choose a role from the dropdown, and click Create.
Select a Role while creating Organization Service Account
When you open a role that is assigned to a service account, the system displays a warning message. Consider the possible impact when you update the permissions associated with or delete a role that would lead to reassigning the service accounts and users to a new role.
Warning that you are about to change a role assigned to a service account

Snyk prevents users from creating Organization service accounts with a role that has more privileges than those the user creating the service account has. If you try to create a service account with a role that has more privileges than you have, you will see the error Cannot create a service account with a higher privilege role than yours.

User cannot assign a more privileged role to a service account
