To build the dependency tree, Snyk analyzes the Gopkg.lock files in your Git repository.
Go Modules and Git
By default, dependencies for Go Modules Projects imported using Git are resolved at the module level rather than the package level, as with Projects tested in the CLI. Thus, when importing using Git, you may see more dependencies and issues reported, including potential false positives, than with the CLI.
To obtain the best possible resolution, enable full source code analysis.
When full source code analysis is enabled, Snyk uses the go list -json -deps ./... command to build the dependency tree the same way the CLI test does. Otherwise, it uses go mod graph .
