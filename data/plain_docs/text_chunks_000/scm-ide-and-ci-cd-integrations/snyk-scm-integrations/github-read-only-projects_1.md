How GitHub Read-only Projects work
Adding a read-only Project lets you track the vulnerabilities in a Project you are considering using as a dependency, a Project you are already using as a stand-alone independent tool within your business, or any other public repository where you do not need to actively prevent or fix issues using Snyk.
The repository is tested daily using your Organization's GitHub credentials. These automated tests are not counted as part of the test limits of your Snyk plan.
Unlike Projects imported through the Snyk GitHub integration, Projects that are imported or monitored with the read-only status cannot do the following:

Use automatic retesting when a pull request is merged.
Commit tests on any PR raised to detect and optionally block new vulnerabilities from being introduced.
Use automated fix PRs to recommend minimal changes to fix vulnerabilities.
Use automated dependency upgrade PRs to keep dependencies up to date, avoid new vulnerabilities, and simplify fixing those that are found.
Use manual Fix PRs generated through Snyk to address specific issues chosen by the user.
