Build-time dependency: Snyk understands build-time dependency to be resolved during build time and not susceptible to change at runtime.
Runtime dependency: Snyk understands runtime dependency to be resolved against the installed runtime, for example, packages coming from the .NET framework (<=4) / .NET runtime (for Core and .NET 5+) such as System.Net.Http . Snyk sometimes refers to runtime dependencies as meta-packages.

You can choose one of the following actions to address vulnerabilities from runtime dependencies. These vary between the SCM and the CLI.
