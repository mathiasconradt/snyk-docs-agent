Objective likelihood factors are taken into account:

Exploit Maturity
Exploit Prediction Scoring System (EPSS) 
Age of advisory 
CVSS exploitability metrics: Attack vector, Privileges required, User interaction, and Scope
Social Trends
Malicious Package
Provider Urgency (Snyk Container)
Package popularity (Snyk Open Source) 

Contextual likelihood factors then increase or decrease the likelihood subscore:  

Reachability (Snyk Open Source Java, JavaScript) 
Transitive depth


Fixability is no longer considered part of the Score Calculation, as the effort needed to mitigate a security issue does not affect the risk it imposes. To focus on actionable issues, use Fixability filters and then use the Risk Score to start with the riskiest issues.
