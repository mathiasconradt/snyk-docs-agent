--output
The name and location of the resulting bundle.
Default: bundle.tar.gz
--entrypoint
By default, the Template command places the Rego for the rules under a ./rules/<rule> folder. The Rego belongs to the rules package, and the entry function is called deny, returning JSON representing a vulnerability if a misconfiguration was found. This structure works with the rules/deny entrypoint, but a custom entrypoint can be provided if the generated file and package structure needs to be modified.
Default: "rules/deny"
--ignore
Accepts a regular expression that can be used to ignore files and folders and prevent them from being loaded for bundling.
Default: ".*”"(hidden files), "fixtures", "testing", "*_test.rego"
--target=rego|wasm
What format to use for the bundle. Snyk does not support Rego bundles for now in the Snyk IaC CLI.
Default: wasm
