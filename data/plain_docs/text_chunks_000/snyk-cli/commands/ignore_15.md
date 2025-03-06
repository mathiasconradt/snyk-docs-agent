To ignore files matching a glob expression, add them to a specific group.
This applies to Snyk Code; it does not apply to Snyk Open Source except unmanaged, to Container, or to IaC.
$ snyk ignore --file-path='./**/vendor/**/*.cpp' --file-path-group='global'
