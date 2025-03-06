snyk test --json-file-output=results-opensource.json
snyk-filter -i results-opensource.json
Example with custom yml file location
snyk-filter -i snyk_results.json -f /path/to/example-high-upgradeable-vulns.yml
