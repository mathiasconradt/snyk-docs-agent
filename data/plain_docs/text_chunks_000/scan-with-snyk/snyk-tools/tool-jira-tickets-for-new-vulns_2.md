./snyk-jira-sync-<yourplatform> 
    --orgID=<SNYK_ORG_ID>                    // Can find it under settings
    --token=<API Token>                      // Snyk API Token. Service accounts work.
    --jiraProjectKey=<Key>                  // Jira project Key the tickets will be opened against
Extended options
./snyk-jira-sync-<yourplatform> 
    --orgID=<SNYK_ORG_ID>                                                // Can find it under settings
    --projectID=<SNYK_PROJECT_ID>                                        // Optional. Syncs all projects in Organization if not provided.
                                                                        // Project ID can be found under project->settings
    --api=<API endpoint>                                                 // Optional. Set to https://<instance>/api for private instances
    --token=<API Token>                                                  // Snyk API Token. Service accounts work.
    --jiraProjectID=<12345>                                              // Jira project ID the tickets will be opened against
    --jiraProjectKey=<KEY>                                               // Jira project Key the tickets will be opened against
    --jiraTicketType=<Task|Bug|....>                                     // Optional. Type of ticket to open. Defaults to Bug. Please see the 'Notes' section below.
    --severity=<critical|high|medium|low>                                // Optional. Severity threshold to open tickets for. Defaults to low.
    --maturityFilter=[mature,proof-of-concept,no-known-exploit,no-data]  // Optional. include only maturity level(s). Separated by commas
    --type=<all|vuln|license>                                            // Optional. Issue type to open tickets for. Defaults to all.
    --assigneeId=<123abc456def789>                                       // Optional.  Jira ID of user to assign tickets to. Do not use assigneeName and assigneeId at the same time
    --assigneeName=<AccountName>                                         // Optional.  Jira Name of user to assign tickets to. Do not use assigneeName and assigneeId at the same time
    --priorityIsSeverity                                                 // Optional. Set the ticket priority to be based on severity (defaults: Low|Medium|High|Critical=>Low|Medium|High|Highest)
    --labels=<IssueLabel1>,IssueLabel2                                   // Optional. Set JIRA ticket labels
    --priorityScoreThreshold=[0-1000]                                    // Optional. Your min priority score threshold
    --dryRun=<true|false>                                                // Optional. result can be found in a json file were the tool is run
    --debug=<true|false>                                                 // Optional. enable debug mode
    --ifUpgradeAvailableOnly=<true|false>                                // Optional. create ticket only for upgradable issues
    --configFile                                                         // Path the jira.yaml if not root
