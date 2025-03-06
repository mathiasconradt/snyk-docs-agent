Feature availability

The Automatic Fix PRs for known vulnerabilities (Backlog PRs) feature is supported for the following SCM integrations: GitHub, GitHub Enterprise, GitHub Cloud App, Bitbucket Server, Bitbucket Cloud, Bitbucket Connect, GitLab, and Azure Repos.
The Automatic Fix PR settings may vary depending on the integration.


When Snyk creates automatic PRs for vulnerabilities, the following rules are applied:

If you select Retest now for the Project, a scan is run manually, and the 24-hour window is marked as having had a scan run. No automatic PR is created until the next automated scan runs.
One pull request is created per Project with a priority score of 700 and above.
Pull requests are created based on the Test & Automated Pull Request Frequency settings.
To update the Test & Automated Pull Request Frequency, navigate to Projects and select your Open Source Project.
Navigate to Settings and select an option from the pulldown list.

Project test and automated PR Checks frequency setting
To determine when your last 24-hour window began, check the Project issue card for Snapshot taken by recurring test. 
Snapshot taken by recurring test 13 hours ago
For specific scan results, you can also check your inbox for an email titled [snyk] Vulnerability alert.
