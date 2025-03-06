When you first roll out your SCM integration, Snyk recommends that you start with Snyk set up to test your PRs without failing them, so that your developers can get used to seeing the Snyk commit check.

Decide to apply PR testing for your integrations at the Organization level, or for specific Projects.
Set the Fail conditions as described in the section Manage PR Check settings:
Select the fail condition Only fail when the PR is adding a dependency with issues.
Check both Only Fail for high or critical severity issues and Only fail when the issues found have a fix available.
