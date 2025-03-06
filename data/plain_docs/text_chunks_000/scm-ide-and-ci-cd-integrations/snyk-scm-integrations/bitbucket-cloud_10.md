This section describes how to migrate your existing Bitbucket Cloud Personal Access Token (PAT) integration, displayed in Snyk as Bitbucket Cloud, to the Bitbucket Cloud App integration.
To migrate to the new app integration, you must remove all the previously imported Projects from Snyk, delete the PAT integration and its Projects, set up the new app integration, and reimport your Projects to Snyk from the new integration.

Before going through the migration process, you should note that the following Project-level information will not persist:

Historic Project-related data, including trend numbers for fixing vulnerabilities
Project-related metadata: ignores and tags
