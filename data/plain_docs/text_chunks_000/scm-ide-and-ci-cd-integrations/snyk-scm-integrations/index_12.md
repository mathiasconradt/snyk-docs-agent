The Snyk GitHub Cloud App integration uses role-based access control, meaning access control is not dependent on individual users or their role, it is instead tied to the app entity.
To set up the GitHub Cloud app integration you must be a:

Snyk Organization Admin.
GitHub Organization Admin.
GitHub Repository Admin (if installing through the GitHub UI).


While some permissions may be optional from GitHub’s perspective, they are necessary to support Snyk functions. These permissions cannot be customized for your individual needs because the app is registered under the Snyk Organization. 

The following table states the required GitHub App permissions and scopes:
Action and scopeScopeLevelPermissionDetermine if the GitHub user has admin role on the GitHub org, to restrict app installation reuse to only admin usersMembersOrganizationReadSearch repositories, and access repository metadata.MetadataRepositoryReadInteract with the GitHub Checks tabChecksRepositoryRead and writeCreate commits and branchesContentsRepositoryRead and writeSend PR check results as commit statusesCommit statusRepositoryRead and writeGet pull requests details, post related comments (next gen PR experience)Pull requestRepositoryRead and writeManage webhooks which trigger the PR checksRepository hooksRepositoryRead and write
