Configure language settings for open source and licensing at the Organization level. The configuration settings apply to all Projects in that Organization.

In your Snyk account, navigate to Settings > Languages..
Under Languages, navigate to JavaScript and select Edit settings.
Configure the settings based on your package manager, npm or Yarn.
Scan and fix dev dependencies: If this is selected, Snyk reads the devDependencies property on the package.json and reports and fixes any vulnerabilities accordingly.
Require package.json and package-lock.json/yarn.lock files to be in sync: When this is selected, if the package.json and package-lock.json/yarn.lockfiles are out-of-sync, Snyk fails the import.
Exclude package-lock.json from being generated when fixing vulnerabilities: If you are using private mirrors or registries, a Snyk-generated lockfile might not be appropriate for you because Snyk uses the npm registry to update the lockfile. Enterprise customers can use package repository integrations to ensure lockfiles are updated correctly. Alternatively, this setting allows you to opt out of getting lockfiles generated for you in Snyk fix pull requests and merge requests.
Update Settings to save changes.
