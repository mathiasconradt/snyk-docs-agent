For each issue, Snyk processes and weighs several factors in a proprietary algorithm to produce the score for that issue. These factors include the following:

Severity levels: calculated using CVSS framework v3.1 scores for an issue.
Exploit maturity: determined by the industry-leading Snyk security team using manual and automated methods to track which vulnerabilities are exploitable and to what extent. This applies to Snyk Open Source.
Reachability (the extent to which vulnerabilities are reachable from the code): determined by looking at the code paths called within a Project. This applies to Snyk Open Source.
Fixability (availability of a fix): defined as having a safer version to upgrade to or a Snyk patch available. For vulnerabilities with neither, developers must either fix the code themselves or use an alternative package. Thus, vulnerabilities with fixes are given a higher Priority Score. This applies to Snyk Open Source.
Time: considered based on how new the vulnerability is. New vulnerabilities are likely to be an increased risk, and so they increase the Priority Score.
Social Trends: calculated by Snyk based on mentions of known vulnerabilities on X (formerly known as Twitter) to express the trend of tweets and reactions.
Malicious packages: assessed to determine if a vulnerability originated from a malicious package. Vulnerabilities originating from malicious packages have higher Priority Scores.


Snyk continually refines its prioritization algorithm to include new factors and updates the weighting of factors to provide the most accurate and up-to-date representation of priority possible, given the latest information.
