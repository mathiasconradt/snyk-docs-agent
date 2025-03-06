Release status
Risk Score is in Early Access and available for Snyk Open Source and Snyk Container, with Snyk Enterprise and Snyk Free plans. If you want to set it up in your Group, contact your Snyk account team.
Use Snyk Preview to replace the Priority Score with the new Risk Score for Snyk Open Source and Snyk Container issues.

The Snyk Risk Score is a single value assigned to an issue, applied by automatic risk analysis for all vulnerability-type issues. License issues are not supported. Risk Score is based on the potential impact and likelihood of exploitability. Ranging from 0 to 1,000, the score represents the risk imposed on your environment and enables a risk-based prioritization approach. 
Risk score remains the same over time if the contributing factors do not change. However, some contributing factors,  such as Exploit Prediction Scoring System (EPSS), potentially can change frequently. The number of days since the vulnerability was first published is also a factor and causes the score to change once, when the number of days becomes more than one year and the likelihood subscore decreases. 
Since real risk is scarce, you should expect a significant drift in the distribution of scores, as can be seen in this example of Project score distributions: 
Example Project scores distribution
Risk Score replaces the Priority Score directly. See the priority score docs for how to interact with the Risk Score in the UI, API, and Reports, where the Risk Score is now introduced when enabled. 
Risk Score is not available in the CLI. 

The Risk Score replaces the Priority Score only after the Snyk Open Source and Snyk Container Projects are re-tested. 
You can wait for the Projects to be automatically re-tested (daily for Snyk Open Source and weekly for Snyk Container), or you can manually re-test the Project.


In the API, the relevant fields are still named with priority.When Risk Score is enabled, the scores and factors populated in these fields are based on the Risk Score model as part of the early access stage.
