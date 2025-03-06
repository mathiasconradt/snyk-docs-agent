Permissions granted to users using the Member roles functionality enable the same capabilities across all Snyk environments: Web UI, API, CLI, and IDE.
The permission View Organization is needed by default for all Organization-level member roles.
If the role is expected to view Project-related data for an Organization along with other operations, the View Organization, View Project, and View Project History permissions should be added to the role at a minimum.
For Integration edit abilities, the Edit Organization permission is required.
Snyk prevents role privileges from escalating. This means users cannot assign a higher privileged role to others and cannot create service accounts with a higher privileged role.
It is advisable to use the Duplicate Role functionality and create a copy of a standard role, then amend the permissions rather than build a role from scratch if you are unsure about the permissions.
