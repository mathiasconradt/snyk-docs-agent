Use -h to display help.
StrictMode
When snyk-delta compares test results, it tries to find the same Project monitored on the Snyk platform. If no monitored Project is found, snyk-delta returns all the issues found by the CLI scan, essentially acting as a pass-through.
The return code is 0 if no issue, 1 if issues are found.
