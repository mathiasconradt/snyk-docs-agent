When developers merge their code changes into their Git repository, Snyk can:

Run PR Checks: scan for issues when a pull request (PR) is merged. By default, PR Checks act to ensure that the attack surface of the application never increases, only failing when a PR adds a dependency with issues.
Run daily scans: have Snyk, by default, run daily scans if you imported Snyk Projects from your repo, to find any new problems in your current libraries quickly, such as critical zero-day vulnerabilities. This scanning occurs for all imported Projects, whether or not your teams are currently working on them. See Walkthrough: code repository Projects.
Trigger rescans: if a webhook is created for an SCM integration, Snyk will trigger a rescan every time a PR is merged.
Create Jira tickets: manage work on new issues discovered, to assign this work to developers in your team, and track progress on these issues. See the Jira integration documentation.
