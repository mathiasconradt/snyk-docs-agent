current version: v1.0

The ISSUE_JIRA_ISSUES table allows to correlate between Snyk issues and assigned Jira issues. As Snyk enables more than one type of Jira integration, it's important to emphasize that the Jira issues that are available in the dataset are originated from the Jira integration that is explained in this article.
| Object name            | Data type     | Description                                                                                    |
| ---------------------- | ------------- | ---------------------------------------------------------------------------------------------- |
| id                     | varchar       | A unique identifier, representing a unique instance of a given vulnerability in a project.     |
| problem_id           | varchar       | Snyk Vulnerability Database ID that uniquely identifies the vulnerability.                     |
| project_public_id    | varchar       | A universally unique identifier for a project, assigned in the record's source database.       |
| org_public_id        | varchar       | A universally unique identifier for an organization, assigned in the record's source database. |
| group_public_id      | varchar       | A universally unique identifier for a group, assigned in the record's source database.         |
| jira_integration_uri | varchar       | The URL of the Jira account provided to the Snyk Jira integration.                             |
| jira_issues          | array         | An array of all Jira Issues ever created for this issue.                                       |
| latest_jira_issue    | varchar       | The most recently created Jira Issue for this issue.                                           |
| __updated_at         | tiestamp_ntz | When the data share data transformation last updated this record.                              |
