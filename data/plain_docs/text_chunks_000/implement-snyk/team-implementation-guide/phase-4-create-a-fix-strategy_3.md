Filters are available to help prioritize what issues need to be fixed more urgently. The following search criteria are most commonly used when building a prioritization plan and can be used iteratively or in combination as you analyze results. 

Severity (Start with High and Critical). It's common to filter by critical severity. However, if you are using Snyk Code, Snyk code only goes up to High, so start there for Code Analysis results.
Exploit Maturity (Issues with Mature or Proof of Concept are more exploitable). By choosing this filter, you implicitly only filter the results to Open Source.
Fixable (if there’s a fix available by simply upgrading a package, it’s much faster to fix).   
CVSS Score for Open Source Vulnerabilities
Priority Score (The above values are used to calculate this score). One strategy is to eliminate the vulnerabilities with a score of 900-1000, and then move to vulnerabilities with a score of 800-900, and so on.

Decide which metrics will be used when planning your fix strategy, and get specific with your timeline. If you choose to fix by severity, for example, estimate the time it will take to resolve vulnerability per severity. It’s recommended to be specific with your fix strategy. 
Example
If there are fifty critical severity issues and one hundred high severity issues,  you may plan on two weeks to fix critical vulnerabilities and then four weeks to fix high severity, based on the size of your team and workload. 
Alternatively, you can fix by issue type.
