Follow these steps to configure automatic upgrade PRs for an entire Organization:

On the Snyk Web UI, open the required Organization.
Navigate to Settings > Organization Settings > Integrations, find your configured SCM, and click Edit settings at the end of the row for that integration.

Editing integration settings

On the Settings page of the selected integration, navigate to the Automatic dependency upgrade PRs section.
In this section, perform the following actions:
Slider - change to Enable.
Maximum number of open upgrade PRs allowed – define how many open Snyk PRs a Project can have to also receive a dependency upgrade PR; the maximum is ten. When the limit of the open PRs is reached, no new upgrade PRs are created.
Include major version in upgrade recommendation – select whether to include major version upgrades in the recommendations. By default, only patches and minor versions are included in the upgrade recommendations.
Dependencies to ignore – enter the exact name of the dependencies that should NOT be included in the Automatic upgrade operation. You can only enter lowercase letters.

Enabling Automatic dependency upgrade PFs

To save and apply your changes, select one of the following from the Save dropdown:
Save  – your changes are saved and will be applied to all the Projects in the Organization that are configured to inherit these Settings from the Organization. Projects that have Custom Settings will not be influenced by this change.
Save changes and apply to all overridden Projects – your changes are saved and will be applied to all the Projects in the Organization. Projects that have Custom Settings will inherit these Organization Settings, and their Custom Settings will be overridden.

From now on, every time Snyk scans any Project in the Organization, it automatically submits Upgrade PRs if the scan discovers that an upgrade is available.
If a newer version is released for an existing Snyk Upgrade PR, or for an existing Fix PR, the existing PR must be closed or merged before Snyk can raise a new PR.
