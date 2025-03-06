This tool provides the means to get the delta between two Snyk Open Source snapshots. This is especially useful when you are running CLI-based scans, such as in your local environment, githooks, and so on.
snyk-delta compares snapshots to provide details about:

New vulnerabilities not found in the baseline snapshot
New license issues not found in the baseline snapshot
Dependency delta between the two snapshots:
Direct dependencies added and removed
Indirect dependencies added and removed
Flag path(s) carrying new vulnerabilities
