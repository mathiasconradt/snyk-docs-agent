There are a number of different features available that can be used to help you gradually introduce the feature to avoid friction with your development teams:

Fail conditions: You can control whether the test will "fail" if the PR itself is adding a dependency with issues (most common) or if the repository as a whole has any issues.

The criteria of what constitutes a "failed test" can also be customized. By default, the test does not filter based on severity or fixability, which can mean that PR tests will regularly fail. You can customize what the criteria are to fail the test:

Only fail for High or Critical severity issues (Snyk Open Source and Snyk Code)
Only fail when the issues found have a fix available (Snyk Open Source).

When you first enable this feature, Snyk suggests ticking both of these boxes so that a test would fail if a ‘High or Critical’ and ‘fixable’ issue is found. In this case, you would want to encourage to developer to fix the issue before proceeding.
These PR tests are optional by default, meaning that even if the test fails, the developer may be able to continue and merge the PR. Controlling whether a PR test is optional or blocking is configured within your source control management platform, such as GitHub’s branch protection rules.
