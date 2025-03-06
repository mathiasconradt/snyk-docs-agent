You cannot have more than one .snyk policy file for each test. For example, the command snyk iac test dir1/ dir2/ loads dir1/.snyk and dir2/.snyk, but if the file dir1/foo/bar/.snyk exists, the CLI does not load it.
When you run snyk iac test, the CLI loads $PWD/.snyk. One common pattern is to use a single .snyk policy file per repository in the root of that repository.
The CLI accepts an option, --policy-path=..., which overrides the location of .snyk policy files. The path can either be a directory containing a file named .snyk or the path to a file named .snyk. The name of the policy file must be .snyk.
Policies are not loaded automatically when the argument to snyk iac test is a file rather than a directory. In this case, --policy-path must be specified in order to load policies.
The CLI accepts the option --ignore-policy, which causes any .snyk policy files that are found to be ignored.
