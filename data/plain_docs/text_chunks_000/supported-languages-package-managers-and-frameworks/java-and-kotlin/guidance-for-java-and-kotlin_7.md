Typically you can instrument testing as part of a build system or adopt a lockfile as part of their process.

It is quite common for large organizations to monitor applications via Git integration, to begin with, daily monitoring, turning on PR checks for only key applications at the start.
As developers become familiar with Snyk capabilities, they widen the scope of applications with PR checks for gating.
Use CI/CD to passively monitor and then turn on gating by using the snyk [product] test and monitor commands.
