Severity levels and CVSS
The Common Vulnerability Scoring System (CVSS) determines the severity level of a vulnerability.
Snyk supports the CVSS framework version 4.0, along with the previous version, CVSS framework version 3.1, to designate the characteristics and severity of vulnerabilities.
 Vulnerabilities published prior to the support of CVSS v4.0, are based on the 3.1 version of CVSS to define severities.
| Level | CVSS score |
| --------- | -------------- |
| Critical  | 9.0 - 10.0     |
| High      | 7.0 - 8.9      |
| Medium    | 4.0 - 6.9      |
| Low       | 0.0 - 3.9      |
The severity level and score are determined based on the CVSS Base Score calculations using the Base Metrics. The Temporal Score, based on the Temporal Metrics, affects the Priority Score.
See Scoring security vulnerabilities 101: Introducing CVSS for CVEs.

Severity levels may not always align with CVSS scores. For example, Snyk Container severity scores for Linux vulnerabilities may vary depending on NVD severity rankings; see Understanding Linux vulnerability severity for details.
