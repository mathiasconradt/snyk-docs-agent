Feature availability
Group-level roles are available only with Enterprise Enterprise plans. For more information, see plans and pricing.

Snyk provides a set of standard user roles that can be assigned and managed using the Snyk Web UI or the Snyk API. The permission sets for pre-defined roles cannot be customized. Instead, Snyk recommends creating a custom role under Manage role in the Snyk Web UI.
The pre-defined roles Snyk provides are as follows:

Organization Admin: the standard role equivalent for Team Leads. Users with this role can add and delete Projects, override Snyk checks, and provision Group members with an Organization-level role.
Organization Collaborator: the standard role equivalent for Developers. This role is ideal for small teams or a developer-first organizational approach.
Group Admin: the standard role equivalent for the person in your company who oversees Snyk use at a high level, providing a full set of permissions at the Group and Organization level. This also means that a Group Admin is automatically an Organization Admin to all Organizations that sit under the Group, although they will not be visible in an Organization level list.
Group Viewer: a user who can access the Group level but requires Organization-level permissions to take actions in Snyk. This is normally used as a starting point during onboarding with Snyk to understand functions tied to Group permissions and design a custom Group role for post-deployment use.
Group Member: a non-functional user role added to your environment as a transition from Group Viewer if you do not yet wish to create a custom role after onboarding with Snyk. This means the permissions granted can vary depending on your requirements, as discussed with your Snyk contacts. Select the named role from the list under Manage Members in the Snyk Web UI to check the permissions assigned to your Group Member role.
Tenant Admin: a user who can access all Tenant products and settings. This role is reserved for account owners and admins only.
Tenant Viewer: a user who can see the list of all users of a Tenant, as well as all the Groups and Organizations set up for a Tenant.
Tenant Member: the default role of all users of a Tenant, but with no access to any Tenant level option.
