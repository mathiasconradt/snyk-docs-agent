The following is an example of config file structure. If your Jira project has custom mandatory fields configured, these fields must be added to the config file. Make sure you give both the key and value expected by Jira under the customMandatoryFields key of the config file:
schema: 1
snyk: 
    orgID: a1b2c3de-99b1-4f3f-bfdb-6ee4b4990513 # <SNYK_ORG_ID> 
    projectID: a1b2c3de-99b1-4f3f-bfdb-6ee4b4990514 # <SNYK_PROJECT_ID>
    severity: critical # <critical|high|medium|low>
    maturityFilter: mature # <mature,proof-of-concept,no-known-exploit,no-data>
    type: all # <all|vuln|license>
    priorityScoreThreshold: 10
    api: https://myapi # <API endpoint> default to 
    ifUpgradeAvailableOnly: false # <true|false>
jira:
    jiraTicketType: Task # <Task|Bug|....>
    jiraProjectID: 12345
    assigneeId: 123abc456def789
    assigneeName: AccountName
    priorityIsSeverity: true # <true|false>
    labels: label1 # <IssueLabel1>,<IssueLabel2>
    jiraProjectKey: testProject
    priorityIsSeverity: false # <true|false> (defaults: Low|Medium|High|Critical=>Low|Medium|High|Highest)
    customMandatoryFields:
        key: 
            value: 5
Notes:

The token is not expected to be present in the config file.
Command line arguments override the config file. Example: Using the config file above, running ./snyk-jira-sync-macOs --Org=1234 --configFile=./path/to/folder --token=123 the org ID used by the tool will be 1234 and not a1b2c3de-99b1-4f3f-bfdb-6ee4b4990513.
See 'Extended options' for default values.
Ensure you use the same issue type that is configured in your Jira. Default is Bug. Verify the type is use (or default) exists in your Jira configuration.
