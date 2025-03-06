Use with --all-projects to cause scans to be interrupted when errors occur and to report these errors back to the user.
The exit code is 2 and the scan ends. No vulnerability information is reported for projects that did not produce errors.
To perform the scan, resolve the error and scan again.
If you do not use --fail-fast, Snyk scans all the projects but does not report any vulnerabilities for projects it could not scan due to misconfiguration or another error.
