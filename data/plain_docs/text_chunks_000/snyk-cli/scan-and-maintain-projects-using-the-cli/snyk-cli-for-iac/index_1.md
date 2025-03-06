Snyk Infrastructure as Code has no equivalent command to snyk monitor because the CLI does not send IaC source files back to the platform for periodic testing.
For IaC CLI results to appear in the Snyk Web UI, use snyk iac test --report to capture a one-time snapshot. Optionally, run the command on a recurring schedule to regularly test your IaC files.
Alternatively, you can add an SCM integration, and Snyk will monitor and test a given Git repository on a recurring basis.
