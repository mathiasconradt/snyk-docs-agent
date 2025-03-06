To set PR Settings on the Project level and override the PR settings configured at the Organization level:

Open the Organization for which you would like to enable automatic upgrade PRs and go to the Projects tab.
Select and expand the relevant Project, select the relevant Target, and using the cog icon, open the Settings.
In the Settings area, in the left panel menu, click the Integration settings to apply unique settings for that specific Project.
In settings that load, scroll to the Automatic dependency upgrade pull requests and click Disabled.
In the options that appear:
Snyk creates PRs up to a maximum of ten open simultaneously per repo.\
      To limit this number further, select the maximum number of PRs from the dropdown list.\
      For more information, see Upgrading dependencies with automatic PRs.
In the Dependencies to ignore field, enter the exact name of any dependencies that should not be handled as part of the automatic functionality.\
      This field accepts only lowercase letters.
After you click Upgrade dependency settings, each time Snyk scans this Project, Snyk automatically submits upgrade PRs based on the scan results.\
      If a newer version is released for an existing Snyk upgrade PR or for an existing fix PR, before Snyk can raise a new PR, the existing PR must be closed or merged.
