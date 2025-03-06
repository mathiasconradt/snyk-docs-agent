Automatic dependency or upgrade PRs work as follows.

The Automatic dependency upgrade pull requests option must be enabled in the Integration Settings at the Organization level or in the Project Settings.
When you import repositories, Snyk scans the repositories and provides scan results. Snyk then continues to monitor your Open Source Projects, scanning them on a regular basis. The re-scan frequency is based on the schedule set in the Project Settings.
For each scan, when new versions for your dependencies are identified, Snyk creates automatic upgrade PRs.
Snyk does not open a new upgrade PR for a dependency that is already upgraded or patched in another open Snyk PR. This also applies to PRs that were opened for such an issue and closed before the upgrade took place. 
Snyk opens separate PRs for each dependency.
By default, Snyk does not create upgrade PRs for a Project that has five or more open Snyk PRs. After the limit of open PRs is reached, no new PRs are created. This limit can be set on the Integration or Project Settings to be between 1-10. This limit applies only to Upgrade PRs, but it does count Fix PRs. However, Fix PRs are not limited in this way.
By default, Snyk recommends only patches and minor upgrades. However, recommendations for major version upgrades can be requested on the Settings page where the feature is enabled.
If the latest eligible version contains vulnerabilities that are not found yet in your Project, Snyk will not recommend an upgrade.
Snyk does not recommend upgrades to versions that are less than 21 days old. This is to avoid versions that introduce functional bugs and are subsequently unpublished or versions that are released from a compromised account, an account for which the account owner has lost control to someone with malicious intent.
