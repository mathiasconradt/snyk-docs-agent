Snyk scans Go Modules Projects in the CLI at the package level rather than the module level, as Snyk has full access to your local source code.
Packages from the Go standard library are not supported or included in the dependency tree.
Packages under golang.org/x/ that are part of the Go Project but outside the main Go tree are supported.
To build the dependency tree, Snyk uses the go list -json -deps ./... command, and the dependencies found in Imports .
TestImports and XTestImports are not supported.
When you test Go Modules Projects using the CLI, Snyk does not require that their dependencies are installed, but you must have a go.mod file at the root of your Project. go list uses this and your Project source code to build a complete dependency tree.
Different versions of Go generate different results for the go list -json -deps command. This can affect the dependency tree and the vulnerabilities that the Snyk CLI finds.
