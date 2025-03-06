The following are the standard pre-defined user roles. See Pre-defined roles for more details.

Group Member: a non-functional role in Snyk. The user can access the Group but requires Organization-level permissions to use Snyk.
Group Viewer: a user that can access the Group level but requires Organization-level permissions to take actions in Snyk. This is normally used as a starting point during onboarding with Snyk to understand functions tied to Group permissions and design a custom Group role for post-deployment use.
Group Admin: provides a full set of permissions at the Group and Organization level. No other roles need to be assigned. This role is typically used for users who manage Snyk.
Organization Admin: Typically assigned to Team Leads. Users with this role can add and delete Projects, override Snyk checks, and provision Group users with an Organization-level role.
Organization Collaborator: This is the standard role in Snyk used for developers. This role is ideal for small teams or a very developer-first organizational approach.


Large enterprises typically limit access to actions such as who can add or delete Projects, and so reduce permissions early on. For this purpose, you should use Custom Roles, for example, creating a Team Lead role to provide a middle ground between the Organization Collaborator and Organization Admin roles.
