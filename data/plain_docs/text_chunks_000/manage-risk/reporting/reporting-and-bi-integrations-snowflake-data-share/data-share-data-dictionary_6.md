current version: v1.0
The ISSUES table contains various attributes of Snyk Issues. Issues can be easily correlated with their originating project, target, org or group, utilizing the corresponding ID columns. On top of the issue's basic attributes, such as its introduction date, type, severity, score, etc., there are columns that elaborate on the vulnerability attributes, such as the CVSS score, EPSS Score, NVD Score, etc.
Querying the issues table allows:
Concluding various metrics and KPIs, among issue backlog, aging, MTTR and SLA compliance.
Visualizing trends of identified, ignored, resolved issues over time
Prioritize issues based on multiple factors and considerations
If you would like to match your results with Snyk Reports: 
filter your query with DELETED_AT IS NULL, as Snyk Reports don't present deleted issues.
Join the Issues table with the Projects table and filter by IS_MONITORED = TRUE, as Snyk Reports doesn't present issues of deactivated projects
| Column name                      | Data type      | Description                                                                                                                                                                                   |
| -------------------------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id                             | varchar        | A unique identifier, representing a unique instance of a given vulnerability in a project.                                                                                                    |
| problem_id                     | varchar        | Snyk Vulnerability database ID that uniquely identifies the vulnerability.                                                                                                                    |
| project_public_id              | varchar        | A universally unique identifier for a project, assigned in the record's source database.                                                                                                      |
| org_public_id                  | varchar        | A universally unique identifier for an organization, assigned in the record's source database.                                                                                                |
| group_public_id                | varchar        | A universally unique identifier for a group, assigned in the record's source database.                                                                                                        |
| product_name                   | varchar        | The Snyk Product which initially identified this issue.                                                                                                                                       |
| problem_title                  | varchar        | Name of the Snyk discovered vulnerability.                                                                                                                                                    |
| vuln_db_url                    | varchar        | URL which directs to the Snyk's Public Vulnerability Database website.                                                                                                                        |
| issue_type                     | varchar        | Indicates whether the issue is related to a vulnerability, license, or configuration.                                                                                                         |
| issue_sub_type                 | varchar        | A more granular variation of issue type.                                                                                                                                                      |
