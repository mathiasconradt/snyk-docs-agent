ProjectIntegration is configured, and users enable automatic upgrade PRs.
Snyk scans your Projects as you import them and continues to monitor your Projects, scanning on a regular basis.
For each scan, when Snyk identifies new versions for your dependencies:
Snyk creates automatic upgrade PRs with the frequency based on Snyk Project settings.
Snyk does not open a new upgrade PR for a dependency that is already changed (upgraded or patched) in another open Snyk PR.
Snyk opens separate PRs for each dependency.
Snyk does not create upgrade PRs for a repo that has five or more Snyk PRs open. If the limit of open PRs is reached, no new ones are created. This number can be set to between one and ten from the settings. This limit only applies when creating upgrade PRs, but does count fix PRs. Fix PRs are not limited in this way.
By default, Snyk recommends only patch and minor upgrades, but major version upgrades can be enabled in the settings where the feature is enabled.
If the latest eligible version contains vulnerabilities not already found in your Project, Snyk does not recommend an upgrade.
Snyk does not recommend upgrades to versions that are less than 21 days old. This is to avoid versions that introduce functional bugs and subsequently get unpublished, or versions that are released from a compromised account (where the account owner has lost control to someone with malicious intent).
