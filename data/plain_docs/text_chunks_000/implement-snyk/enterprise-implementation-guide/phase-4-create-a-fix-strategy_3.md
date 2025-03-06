Filters are available to help prioritize what issues need to be fixed urgently. The following search criteria are most commonly used when building a prioritization plan and can be used iteratively or in combination as you analyze results. 

If you wish to filter based on Priority or Risk Score versus Severity:
Snyk uses a wide variety of information to assign a score to an issue. You could filter on 900+ for the first round, then 800+, then 700+, and so on to work through triaging by Priority Score. If you are using Risk Score, follow a similar process starting from the highest risk items and working through them. Alternatively, if you prefer to filter on your own metrics, or a combination of Score and other key metrics, then your process can be filtering individually on attributes.
Severity: start with High and Critical. It is common to filter by Critical severity; however, if you are using Snyk Code and Snyk Open Source:
Filtering by Critical and High ensures Snyk Code issues are not filtered out.
Alternatively, filtering on Critical severity for Snyk Open Source, then filtering on  severity=high, product=Snyk Code for Snyk Code independently, ensures you identify the most severe issues for each scan type.


If you wish to focus on Open Source during triage:
By choosing the Exploit Maturity filter, you implicitly filter only open-source results. Exploit Maturity addresses issues that are Mature or have Proof of Concept and thus are more exploitable. 
By choosing the Fixable filter, you can find issues where there is a fix available by upgrading a package. This makes fixing faster than without an upgrade.   
You can choose CVSS Score for Open Source Vulnerabilities.
When you filter by Priority Score, CVSS Score is included in the calculation. One strategy is to eliminate the vulnerabilities with a score of 900-1000, and then move to vulnerabilities with a score of 800-900, and so on.
If you are using Snyk AppRisk, it may be beneficial to use Classification and filters like Public IP/Deployed to further refine and find applications of High Importance or exposed publicly in the first round of triage.

When planning your fix strategy, decide which metrics will be used on a specific timeline. If you choose to fix by severity, for example, estimate the time it will take to resolve vulnerability per severity. It is recommended to be specific with your fix strategy. 

Example fix strategy
If there are fifty Critical severity issues, and one hundred High severity issues,  you may plan on two weeks to fix critical vulnerabilities and then four weeks to fix high severity issues, based on the size of your team and workload.
