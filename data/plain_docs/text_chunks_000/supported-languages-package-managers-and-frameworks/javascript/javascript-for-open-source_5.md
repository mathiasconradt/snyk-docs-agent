Release status
Snyk CLI pnpm support is in Early Access.
Enable it using Snyk Preview and install CLI v1.1293.0 or later.

The following table shows a matrix of pnpm versions and Snyk features availability.
pnpm versionCLI supportSCM supportLicense scanningFix PRspnpm 7✔︎ (Early Access)✔︎ (Early Access)pnpm 8✔︎ (Early Access)✔︎ (Early Access)︎pnpm 9✔︎ (Early Access)︎✔︎ (Early Access)︎
Lockfile versions
Snyk uses the pnpm-lock.yaml lockfile to generate a dependency tree for your project. 
The supported lockfile versions are 5.4, 6.x and 9.x, corresponding to pnpm 7, 8 and 9.
pnpm lockfiles do not include bundledDependencies, so Snyk does not include them in scans.
