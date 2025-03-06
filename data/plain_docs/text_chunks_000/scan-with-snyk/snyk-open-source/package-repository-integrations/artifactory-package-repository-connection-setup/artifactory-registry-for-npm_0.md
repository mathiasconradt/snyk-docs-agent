Feature availability
Package repository integrations are available only with Enterprise plans. For more information, see plans and pricing.
This guide is relevant for Snyk UI integrations only. The CLI supports Yarn and npm Projects with private Artifactory registries.

Snyk can use Artifactory Package Repositories with npm and Yarn Projects. This enables Snyk to regenerate lockfiles with the correct URLs when creating Pull/Merge Requests.
You can add configuration to tell Snyk where your private Artifactory Node.js packages are hosted and under what scope. This is the same information you would normally add in your .yarnrc or .npmrc
