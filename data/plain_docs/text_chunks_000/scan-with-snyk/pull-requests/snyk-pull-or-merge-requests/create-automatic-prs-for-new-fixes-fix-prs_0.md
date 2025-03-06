Feature availability

The Automatic Fix PRs feature is supported for the following SCM integrations: GitHub, GitHub Enterprise, GitHub Cloud App, Bitbucket Server, Bitbucket Cloud, Bitbucket Connect, GitLab, and Azure Repos.
The Automatic Fix PR settings may vary depending on the integration.


The following rules are applied to the creation of automatic PRs for vulnerabilities:

Pull requests are created based on the Test & Automated Pull Request Frequency notification setting.
If you select Retest now for the Project, a scan runs manually. The 24-hour window is marked as having had the scan run. and no automatic PR is created until the next automated scan runs.
One pull request is created per Project.
If either the vulnerability is new and has a fix available or the fix is new and is not ignored, a Fix PR can be created.
For known vulnerabilities, see Configure Automatic Backlog PRs. 

Test & Automated Pull Request Frequency setting
To determine when your last 24-hour window began, check the Project issue card for Snapshot taken by recurring test and check your email for [snyk] Vulnerability alert for specific scan results:
Snapshot taken by recurring test 16 hours ago
Pull requests for new vulnerabilities are enabled by default for new integrations.
See the Git repository SCM integrations pages for details about supported integrations.
