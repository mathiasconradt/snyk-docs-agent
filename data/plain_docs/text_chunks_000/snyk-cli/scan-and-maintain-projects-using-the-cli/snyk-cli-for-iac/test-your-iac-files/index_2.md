When you provide no arguments, the snyk iac test command recursively traverses the current working directory and scans every file it finds:
snyk iac test
You can scan specific files under the current working directory. If you provide one or more file paths, the command scans only those files:
snyk iac test file-1.tf dir/file-2.tf
The command returns an error if you provide file paths outside the current working directory. For example, this is not a valid invocation of the command:
snyk iac test ../main.tf
