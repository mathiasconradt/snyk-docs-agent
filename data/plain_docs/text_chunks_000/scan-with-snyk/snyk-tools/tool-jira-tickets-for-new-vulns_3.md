The tool does not support infrastructure as code projects. It opens an issue only for code and open source projects and ignores all other project types.
Priority is severity
There is an option to get the Jira ticket priority set based on issue severity. The defaults map to:
| Issue severity | Jira priority |
| -------------- | ------------- |
| critical       | Highest       |
| high           | High          |
| medium         | Medium        |
| low            | Low           |
Use the SNYK_JIRA_PRIORITY_FOR_XXX_VULN env var to override the default and set your value.

Example: Critical severities should receive the Hot Fix priority in Jira.
export SNYK_JIRA_PRIORITY_FOR_CRITICAL_VULN='Hot Fix'
