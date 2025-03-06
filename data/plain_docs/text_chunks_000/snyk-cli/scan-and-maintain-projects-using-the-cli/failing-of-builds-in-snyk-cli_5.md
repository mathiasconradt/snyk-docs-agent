snyk test --json | snyk-filter -f /path/to/example-cvss-9-or-above.yml
Custom criteria and filtering with snyk filter
snyk-filter can use any combination of criteria available in the snyk test JSON output.
You may also have different criteria for display from what will fail the build. This allows you to do things like display all vulnerabilities in the test output while failing only on some specific criteria.
Refer to the snyk-filter project on GitHub for examples and more information.
