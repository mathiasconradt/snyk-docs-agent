Pull request checks are tests that run on generated pull requests to identify new issues with Projects. This allows you to prevent issues from being introduced into your code before merging to the main branch.
PR Checks that are configured to “Only fail when the issues found have a fix available” rely on Snyk FixPR support and, therefore, will not alert for projects in languages that do not support FixPRs. 
For a full description of PR Checks, see Pull Request Checks.
