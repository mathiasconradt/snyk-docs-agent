Snyk can generate a dependency tree from POM via the Git integration or CLI:

Locally and using CI/CD: Snyk will interact with the package manager to produce a list of dependencies.
Git integration: will approximate the build as if it were built at that time.


Developer dependencies (scope=test) are ignored as they are not pushed to production and are generally considered noise. You can enable them in CLI by adding --dev
