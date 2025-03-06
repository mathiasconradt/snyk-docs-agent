This can be used in combination with the --report option.
Specify a reference that differentiates this project, for example, a branch name or version. Projects having the same reference can be grouped based on that reference.
Example, setting to the current Git branch:
snyk iac test myproject/ --report --target-reference="$(git branch --show-current)"
Example, setting to the latest Git tag:
snyk iac test myproject/ --report --target-reference="$(git describe --tags --abbrev=0)"
