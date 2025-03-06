You can use this tool inline or as a standalone command.
Inline operations
Use snyk test --json --print-deps | snyk-delta

You may point to a specific snapshot by specifying org+project coordinates:\
  snyk test --json --print-deps | snyk-delta --baselineOrg xxx --baselineProject xxx
Use --setPassIfNoBaseline if used with snyk-prevent_commit_status and the Project is not monitored. This preventssnyk-prevent_commit_status from failing:\
  setPassIfNoBaseline default to false\
  snyk test --json --print-deps | snyk-delta --baselineOrg xxx --baselineProject xxx --setPassIfNoBaseline true


The BaselineProject value is expected to be a UUID, not a name.\
Check the Snyk Web UI or API to retrieve those UUIDs.
