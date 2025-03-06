You can configure PR Checks to work only for specific Projects:

Navigate to Projects and expand the target containing your Project.

Click a Project name to open it. Based on the Project type, you can choose the following:


package.json to check for open-source and licensing issues.

Code analysis to check for security issues in your code.

Project overview

Navigate to Settings.
On the left side, select your integration. For this example, GitHub has been integrated with Snyk.
Configure Project settings based on your Project type:


Configure for open source and licensing issues (click to expand)

1. In **Snyk test for pull request** select **Custom** to configure the settings.
2. Enable the option to fail the PR when open-source and licensing issues found in the proposed changes exceed your specified severity threshold.
3. Configure the following settings:

* [ ] **Fail conditions**: Select one of the following PR failure conditions based on the security issues distribution.
  * [ ] **Only fail when the PR is adding a dependency with issues**: Set this condition when there is at least one dependency with security issues.
  * [ ] **Fail if the repo has any issues**: Set this condition for any security issues found in the Git repository.
* [ ] **Only fail for high or critical severity issues**: Select additional failure conditions based on the severity threshold.
* [ ] **Only fail when the issues found have a fix available**: Set this condition on or more if the issues found have a dependency or package with a version in which the issue is fixed.

4. **Update Snyk pull request settings** to save changes.



Configure for code analysis (click to expand)

1. In **Snyk Code for pull request** select **Custom** to configure the settings.
2. Enable this option to fail the PR when the security issues found in the proposed changes exceed your specified severity threshold.
3. Configure the following settings:

* [ ] **Minimal severity to fail PR check**: Select the severity threshold at which the PR fails. For example, if you select **Medium**, the PR fails on issues found at this level or above, while it is merged for **Low** severity issues.

4. **Update Snyk pull request settings** to save changes.
