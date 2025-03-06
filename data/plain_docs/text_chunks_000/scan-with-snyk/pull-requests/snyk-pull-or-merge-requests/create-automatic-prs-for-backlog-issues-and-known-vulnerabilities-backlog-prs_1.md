Follow these steps to configure Automatic fix PRs on a specific Git repository you have already integrated with Snyk, such as GitHub.

Enabling Automatic Fix PRs can result in larger version jumps.

The configuration settings apply to all Projects in that Organization. You can also extend the configuration to Projects with custom settings.

Open Snyk Web UI and navigate to Settings > Integrations.
Select a Git repository integration (SCM). For this example, GitHub is configured.
Under Automatic Fix PRs, enable Known vulnerabilities (backlog).\
   This retrieves previously declared vulnerabilities from the Project's backlog.

Automatic Fix PRs settings for Git integration


Select the Fix Strategy for your Backlog PRs.


By default, the fix strategy will be a single PR at the vulnerability level. Snyk opens one PR each day for issues in your backlog, fixing the top vulnerability it finds.


You can check Fix all vulnerabilities for the same dependency in a single PR. This selects the vulnerability with the highest priority and a fix to resolve it, as well as fixes for other vulnerabilities in the same dependency.


Click Save.

(Optional) Select Save changes and apply to all overridden Projects to extend the current configuration to Projects with custom settings.\
   Use this option to apply the same configuration to all Projects. Selecting this option updates all of the individual Project settings for Automatic fix PRs. For Projects that previously had their own settings for automatic fix full requests, selecting this option overrides the Project setting with the global setting.
