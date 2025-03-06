Use snyk monitor to expose vulnerabilities and post to the Snyk UI for ongoing monitoring:
snyk monitor --all-projects --org=snyk-apps
Use snyk test to fail the build on high severity issues:
snyk test --all-projects --org=snyk-apps --severity-threshold=high
To see the full list of options in the CLI, run the snyk test --help, snyk monitor --help, and snyk container --help commands or see the help docs.
