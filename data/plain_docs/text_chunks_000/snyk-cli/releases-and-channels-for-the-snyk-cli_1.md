Beginning with v.1.1291.0, the Snyk CLI follows the industry standard Semantic Versioning three-part notation as follows.
Given a version number MAJOR.MINOR.PATCH, increment the:

MAJOR version when you make [breaking] changes
MINOR version when you add functionality in a backward-compatible manner
PATCH version when you make backward-compatible bug fixes

Additional labels are added for CLI releases as needed based on the standard.
In the Snyk CLI context, Snyk defines a breaking change as a change that could break automated workflows and cause failures in your existing working setup, such as CI/CD integrations. Breaking changes will be indicated by incrementing MAJOR and mentioned in the release notes too.
Some examples of breaking changes are the following:

Deprecating or changing output fields, field names, or environment variables
Introducing mandatory configuration changes
Changes in error or exit codes
