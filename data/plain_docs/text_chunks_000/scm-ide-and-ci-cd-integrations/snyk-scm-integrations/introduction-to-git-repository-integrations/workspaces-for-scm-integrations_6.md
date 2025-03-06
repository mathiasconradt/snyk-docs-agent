The Workspaces feature is managed through the Integrations settings page on the Group or Organization level. To do so, you must be a Snyk Group Admin or Snyk Organization Admin.
When enabled at the Group level, all Organizations within that Group will have Workspaces enabled.
The Workspaces feature can be enabled for individual organizations within a Group, even if disabled at the Group level.
While you can choose to disable the Workspaces feature, it is important to understand doing so will hinder Snyk’s ability to scan repositories in two specific ways:

Frequency of scanning: With Workspaces disabled, Snyk will analyze repository content through SCM APIs, which typically impose primary and secondary rate limits, and content limits. For example, the GitHub.com APIs are rate-limited to allow only a certain number of requests per hour, which hinders Snyk’s ability to analyze a large number of repositories in any one hour.
Completeness of scanning: With the Workspaces feature disabled, Snyk will analyze repo content through SCM APIs, which typically limit the number of tree entries that can be retrieved from the Git database, potentially leading to missed vulnerabilities. This impacts analysis of repositories containing a large number of files, sometimes referred to as monorepos.
