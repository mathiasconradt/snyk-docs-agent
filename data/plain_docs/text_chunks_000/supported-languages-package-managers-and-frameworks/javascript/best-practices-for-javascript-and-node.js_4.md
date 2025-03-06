optionalDependencies are included by default for CLI and CI/CD, as well as SCM integrations.
npm
Snyk can build a dependency tree with or without a lockfile. If a lockfile is present, this will be used.

Locally and CI/CD: If a lockfile is not present and the scan is with the CLI or an IDE, Snyk looks at node_modules to determine what is installed.
SCM integration: If a lockfile is not present, Snyk will approximate what the tree will look like at build time. This is highly valuable for getting insights into Projects in development or what the next build will look like when there is no lockfile present

As a user of npm, you may ask, “Why Snyk?” when npm-audit is at hand anytime you are working with your dependencies. You get the following capabilities:

Snyk helps secure not only open source but also your first-party code. If you are using infrastructure as code and/or containers, Snyk can also provide visibility and remediation advice.
It’s designed both for individuals and companies.
In the context of Open Source:
You receive all the benefits of the curation, updates, and additional value that the Snyk Security Team adds, such as Known Exploit and Trending on X (formerly known as Twitter).
You have Automated Remediation.
Central reporting.
Git Code repository integration, but not just there, Snyk has integrations across your pipeline and visibility into production.
Broad support across programming languages and package managers.
Ignore capabilities.

For more information, see Snyk for npm.
