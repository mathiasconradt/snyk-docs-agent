The Settings on the Project level override the Settings on the Organization level. However, the Settings on the Organization level can override the Custom Settings of a Project if they are configured after the Project-level customization and are saved with the option Apply changes to all overridden projects.
Follow these steps to configure automatic upgrade PRs for a specific 
From the Snyk Web UI, open the Organization that includes the Project you want to configure.
In the list of Projects, locate and expand the Project for which you want to enable automatic upgrade PRs.
Click the Project settings at the end of the Project row.
On the Project Settings page, select the integration you are using.

Project Settings - Select the integration you are using

On the Integration page, scroll to the Automatic dependency upgrade pull requests section and choose one of the following:
Inherit from Integration settings – apply the Integration Settings of the Organization to the selected Project.\
     If the Automatic dependency upgrade PRs option is disabled for the Organization, this option will also be disabled for the Project.
Customize for only this Project – apply specific settings of the Automatic dependency upgrade PRs option on the Project. If you select this option:
Change the slider to Enabled.
In Include major version in upgrade recommendation, select one of the available options to define whether major version upgrades will be included in the recommendations.\
   By default, only patches and minor versions are included in the upgrade recommendations.
In Limit Snyk to this many dependency upgrade PRs open simultaneously, define how many open Snyk PRs a Project can have to receivee also a dependency upgrade PR. You can set a number between 1 and 10.\
   When the limit of the open PRs is reached, no new upgrade PRs are created.\
   By default, to also receive a dependency upgrade PR, a Project can have up to four open PRs.
In Dependencies to ignore, enter the exact name of the dependencies to exclude from the Automatic upgrade operation.\
   You can only enter lowercase letters.
Click Update dependency upgrade settings to save your changes.



Automatic dependency upgrade pull requests settings at the Project level
After you have completed these steps, Snyk scans the Project and automatically submits Upgrade PRs if the scan discovers that an upgrade is available. If a newer version is released for an existing Snyk Upgrade PR or an existing Fix PR, the existing PR must be closed or merged before Snyk can raise a new PR.
