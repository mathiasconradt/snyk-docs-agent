Path to a .snyk policy file to pass manually.
Default: none
--path=<PATH_TO_RESOURCE>
Path to resource inside the depgraph for which to ignore the issue.
Use to narrow the scope of the ignore rule. When no resource path is specified, all resources are ignored.
For ecosystems which use the semver convention for versioning, you can specify component versions in the path using https://github.com/npm/node-semver#versions
If used, follows the --policy-path option.
Default: all
