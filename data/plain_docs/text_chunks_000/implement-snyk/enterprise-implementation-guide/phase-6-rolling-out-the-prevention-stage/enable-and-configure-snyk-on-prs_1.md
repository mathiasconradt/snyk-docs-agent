You can use fail conditions to help you gradually introduce PR Checks to avoid friction with your development teams.
Fail conditions allow you to control whether the test will fail if the PR itself adds a dependency with issues, the most common circumstance, or if the repository as a whole has issues.
The criteria for what constitutes a failed test can also be customized. By default, the test does not filter based on severity or fixability, which can mean that PR tests will regularly fail. You can customize  the criteria to fail the test:

Fail only for High or Critical severity issues; function available for Snyk Open Source and Snyk Code
Fail only when the issues found have a fix available; function available for Snyk Open Source

When you first enable PR Checks, Snyk suggests ticking both of these boxes so that a test would fail if a High or Critical and fixable issue is found. In this case, you would want to encourage to developer to fix the issue before proceeding.
These PR tests are optional by default, meaning that even if the test fails, the developer may be able to continue and merge the PR. Controlling whether a PR test is optional or blocking is configured within your source control management platform, such as GitHub’s branch protection rules.
