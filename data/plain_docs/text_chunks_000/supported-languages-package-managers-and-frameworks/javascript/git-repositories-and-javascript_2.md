Yarn and npm workspaces are not explicitly supported in Snyk git repository integration scans.

Root-level package.jsonmanifest files with adjacent lockfiles will be scanned as normal. 
For nested manifest files with no lockfiles, Snyk will approximate what the dependency tree will look like at build time without using the root lockfile. 
In addition, Fix PRs are not supported for nested manifest files with no lockfiles.
