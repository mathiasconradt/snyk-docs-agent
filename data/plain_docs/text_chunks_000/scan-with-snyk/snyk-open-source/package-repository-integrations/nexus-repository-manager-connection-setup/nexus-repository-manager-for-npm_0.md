Feature availability\
Package repository integrations are available only with Enterprise plans. For more information, see plans and pricing.
This guide is relevant for Snyk Web UI integrations only; the Snyk CLI  supports Yarn and npm Projects with private Nexus Repository Manager registries.

Snyk can use Nexus Repository Manager with npm and Yarn Projects imported from Git.
This enables Snyk to regenerate lockfiles with the correct URLs when creating Pull/Merge Requests.
You can add configuration to tell Snyk where your private Nexus Repository Manager Node.js packages are hosted and under what scope.
This is the same information you would normally add in your .yarnrc or .npmrc
