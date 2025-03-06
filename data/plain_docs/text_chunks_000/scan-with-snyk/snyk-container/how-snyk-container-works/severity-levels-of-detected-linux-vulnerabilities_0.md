When determining the severity level of a Linux vulnerability (Low, Medium, High, Critical), Snyk Container considers multiple factors:

Snyk internal analysis
An assessment of the severity provided by the Linux distribution security maintainers
The severity of the vulnerability, as assessed by the National Vulnerability Database (NVD).

In certain cases, NVD assigns a different CVSS vector and severity score from the security maintainers of a particular Linux distribution. When this occurs, Snyk prioritizes and uses the CVSS and severity determined by the Linux distribution maintainers, as asserted by the relative importance feature.
