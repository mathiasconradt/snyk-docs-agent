Feature availability\
This feature is available only with Enterprise plans. For more information, see plans and pricing.
This guide is relevant for Snyk Web UI integrations only. The Snyk CLI already supports Yarn and npm projects with private npm Teams and npm Enterprise registries.

Snyk can use custom npm Teams and npm Enterprise repositories with npm and Yarn Projects.
This enables Snyk to resolve all direct and transitive dependencies of packages hosted on the custom registry and calculate a more complete, accurate dependency graph and related vulnerabilities.
After configuration, Snyk will also use this information to access private dependencies when creating Pull/Merge Requests, by allowing npm and yarn to reach those dependencies in order to regenerate the lockfile.
You can add configuration to tell Snyk where your private npm Teams and npm Enterprise Node.js packages are hosted and under what scope..
This is the same information you would normally add in your .yarnrc or .npmrc
