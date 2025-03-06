You can set the target reference for the scanned Projects using the --target-reference option. This option is valid only when used with --report.
The following example sets the target reference for the scanned Projects to the name of the current Git branch.
snyk iac test myproject --report \
    --target-reference="$(git branch --show-current)"
