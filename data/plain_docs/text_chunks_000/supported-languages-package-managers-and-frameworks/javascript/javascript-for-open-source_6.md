Snyk uses the Yarn lockfile (yarn.lock) to generate a representation of project dependencies.
The files Snyk relies on to scan a project may change on version upgrades of the package manager. Snyk lists only versions verified internally as supported.
If you are using a newer version of Yarn than is listed on this page, you may find Snyk performs as expected because Yarn is using a lockfile version that is already supported. That version of Yarn has likely not been evaluated and, thus, not added to this page. 
The following table shows the Yarn versions and Snyk features availability matrix.
Yarn VersionCLI supportSCM supportLicense scanningFix PRsYarn 1✔︎✔︎✔︎✔︎Yarn 2✔︎✔︎✔︎✔︎Yarn 3✔︎✔︎✔︎✔︎

Because different versions of Yarn have different feature sets, there are differences in Snyk support in order to match how the package manager works.
Resolutions are supported in Yarn v2 and above. Yarn v1 resolutions are not supported.
