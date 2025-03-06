Configure PR Checks for a specific Git repository you have already integrated with Snyk, such as a GitHub repository.
The configuration settings apply to all Projects in that Organization. You can also extend the configuration to Projects with custom settings.

In the Snyk Web UI, navigate to Settings > Integrations and select your connected source code manager to open the settings configuration.

To check for code issues, configure and save the following changes:


[ ] Code Analysis: Enable this option to fail the PR on new vulnerabilities detected in your Git repository. If the severity is higher than your threshold, the PR is not merged into the main branch.

[ ] Fail conditions: Select the severity threshold at which the PR fails. For example, if you select Medium, the PR fails on issues found at this level or higher, while it is merged for Low severity issues.

PR Checks that are configured to “Only fail when the issues found have a fix available” rely on Snyk FixPR support and, therefore, will not alert for projects in languages that do not support FixPR Checks.
PR check settings to analyze code issues

If you cannot see the Code Analysis section, ensure that your user has the Group Admin role assigned and that the feature is enabled for Snyk Code. See the  Prerequisites.



To check for open-source and licensing issues, configure and save the following changes:


[ ] Open Source Security & Licenses: Enable this option to fail the PR when open-source and licensing issues found in the proposed changes exceed your specified severity threshold. If the severity is higher than your threshold, the PR is not merged into the main branch.

[ ] Fail conditions: Select one of the following PR failure conditions based on the security issues distribution.
[ ] Only fail when the PR is adding a dependency with issues: Set this condition to fail PR when there is at least one dependency with security issues.
[ ] Fail if the repo has any issues: Set this condition to fail a PR for any security issues found in the Git repository.
[ ] Only fail for high or critical severity issues: Select additional failure conditions based on the severity threshold.
[ ] Only fail when the issues found have a fix available: Set this condition on for the PR check to fail when the PR introduces new vulnerabilities that are fixable by Snyk. PR checks don't fail on newly introduced vulnerabilities if Snyk is unable to fix them.

When switched on, this will cause the PR check to fail when the PR introduces new vulnerabilities that are fixable by Snyk. PR checks will not fail on newly introduced vulnerabilities if Snyk is unable to fix them.
PR check settings to analyze open-source and licensing issues

Either click Save to save the changes, select the Save dropdown and click Apply changes to all overridden Projects to extend the current configuration to Projects with custom settings. For more information, see Configure PR Checks at the Project level.
