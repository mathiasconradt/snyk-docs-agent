The following snyk command line options are supported with the snyk test --unmanaged and snyk monitor --unmanaged commands:
--org=<ORG_ID>\
--json\
--json-file-output=<OUTPUT_FILE_PATH> (snyk test only)\
--remote-repo-url=<URL>\
--severity-threshold=<low|medium|high|critical> (snyk test only)\
--max-depth\
--print-dep-paths\
--target-reference=<TARGET_REFERENCE> (snyk monitor only)\
--project-name=<c-project> (snyk monitor only)
For more information about command line options, see the Snyk help docs: Options for scanning with snyk test --unmanaged or snyk monitor --unmanaged.
To import the test results (issues and dependencies) in the Snyk CLI, run the snyk monitor --unmanaged command:
```
$ snyk monitor --unmanaged
Monitoring /c-example (c-example)...
Explore this snapshot at https://app.snyk.io/org/example-org/project/8ac0e233-d0f9-403e-b422-5970e7a37443/history/5de4616d-3967-485f-bf21-bbbe91068029
Notifications about newly disclosed issues related to these dependencies will be emailed to you.
```
This creates a snapshot of dependencies and vulnerabilities and imports them into the Snyk Web UI, where you can review the issues and see them included in your reports.
Importing a Project with unmanaged dependencies creates a new Project that is listed on the Project page:
Project with unmanaged dependencies
