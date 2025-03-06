| Step                                                                                                                                                                                                                                                                                                               | Due date           | Your Action Items                                                                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Announce that List all projects v1 API is now deprecated                                                                                                                                                                         | June 22, 2023      | Review the current API usage and use and identify where a migration would need to take place                                                                                              |
| Migration guide to be published with a detailed comparison between v1 and REST Projects API                                                                                                                                                                                                                        | June 22, 2023      | Review the migration guide and plan to migrate any existing code and workflows before the final date                                                                                      |
| List all projects v1 API will now return 410 Gone:For all all newly created Groups on Enterprise PlanFor all newly created Organizations on other plans with access to the Snyk API | June 22, 2023      | No action needed for existing users on Enterprise planNew users should use the REST Projects API for all new integrations                                |
| Snyk Tools                                                                                                                                                                                                                                                                                                         | August 15, 2023    | Customers using Snyk Tools need to upgrade to a version that supports using the REST Projects API instead of v1Refer to the detailed list included in this guide |
| List all projects v1 API documentation removal                                                                                                                                                                                   | September 22, 2023 | No action needed                                                                                                                                                                          |
| End-of-life: All access to List all projects v1 API will result in a 410 Gone response.                                                                                                                                          | December 22, 2023  | Ensure migration has been completed by this time to avoid disruption to automated workflows                                                                                               |
The following Snyk Tools that use the List all projects v1 API have been updated to use the REST List all projects API instead:

snyk-jira-tickets-for-new-vulns: version 5.0.0 or newer
snyk-api-ts-client: version 1.11.1 or newer
snyk-request-manager: version 1.8.1 or newer
backstage-plugin: version 2.0.0 or newer
api-import-tool: version 1.99.0 or newer
snyk-scm-mapper: latest version
pysnyk: version 0.9.8 or newer
snyk-repo-diff: latest version
snyk delta: version 1.9.0 or newer
snyk-tags-tool
scm-contributors-count
snyk-issues-to-csv: latest version
snyk-disallow: this tool is now deprecated
snyk-prevent-gh-commit-status: version 2.2.1 or newer
Various CX Tools code samples have been updated
