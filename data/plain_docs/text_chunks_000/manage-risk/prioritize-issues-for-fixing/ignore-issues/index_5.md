Ignores for Open Source issues found in a CLI or CI/CD run are synchronized with the Web UI as follows:

You scan a Project and push the results to the Web UI using snyk monitor.
You see the results of the scan in the Web UI and choose to ignore an issue.
The issue is ignored when you run snyk test or snyk monitor in the CI/CD or CLI.

Refer to the following example. Issues are identified as CI/CLI, meaning the Project was imported from snyk monitor. The issue is npmconf. It is Not vulnerable, and the user can select Ignore.
Project imported by snyk monitor, ignore set in the Web UI
The following shows snyk test results before an ignore is set in the Web UI:
Snyk test results before ignoring in the Web UI
The following shows snyk test results after an ignore is set in the Web UI:
Snyk test results after ignoring in the Web UI
The same repository imported from the SCM is considered to be a different Project, and any ignore set for an SCM Project does not impact the results of snyk test from the CLI or a CI/CD. SCM and CI Projects behave as two standalone Projects.
