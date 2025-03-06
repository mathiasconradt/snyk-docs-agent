There are multiple CVSS Scores for the same vulnerability for several reasons:

​When evaluating the severity of a vulnerability, it is important to note that there is no single CVSS vector. There are multiple CVSS vectors defined by multiple vendors; the National Vulnerability Database (NVD) is one.
The majority of vulnerabilities published by Snyk originate from proprietary research, public information sources, or through third-party disclosures.
For example, when Snyk discovered the Critical Severity Spring4Shell vulnerability, the advisory was published on March 30, 2022, with the CVSS vector analysis. This was before an official CVE was assigned and before NVD conducted its analysis, which was published nine days later on April 8, 2022.
Having some differences in CVSS vectors is normal and expected. The likelihood of certain attack vectors will involve discrepancies and judgments made about them that make sense for the application and use cases of open source software users.
The severity of a vulnerability is influenced by a variety of factors, including whether it comes from a "red team" angle or a "blue team" angle. To arrive at an objective and actionable rating, Snyk analysts examine the full range of data, from vendors to reporters to attackers.
There are times when a vendor discovers additional information about a vulnerability that can affect its severity. Users can find all the relevant information used to determine the severity that Snyk curated in the description and references of the advisory.

Different vendors may use different versions of CVSS, resulting in differing scores and severity levels. For instance, Snyk adopted CVSS version 4.0 as its primary framework in 2024. When comparing a vulnerability published by Snyk using CVSS v4.0 with one published by the NVD using CVSS v3.1, the scores and severity ratings may differ significantly. In addition, CVSS score calculation can be done based on different vectors: 

Base (CVSS-B),
Base + Threat (CVSS-BT), 
Base + Environmental (CVSS-BE), 
Base + Threat + Environmental (CVSS-BTE). 

Snyk performs the calculation of the score and the severity based on the Base metrics (as advised in compliance frameworks like FedRAMP and PCI-DSS) and provides the Threat Metric (also known as Exploit Maturity) as a separate data point.
