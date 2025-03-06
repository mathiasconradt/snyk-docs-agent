In case using an API or the Snyk Settings page seems too restrictive, Snyk also provides a way to configure the custom rules by using environment variables.
You can use the Snyk IaC GitHub Action with the SNYK_CFG_OCI_REGISTRY_URL, SNYK_CFG_OCI_REGISTRY_USERNAME, and SNYK_CFG_OCI_REGISTRY_PASSWORD environment variables to scan your configuration files for any custom rules that may have been breached.
The GitHub Action reads these environment variables and pulls down the bundle pushed in the previous step to the configured OCI registry. The GitHub action looks like this:
```
name: Snyk Infrastructure as Code Custom Rules
on:
  push:
jobs:
  snyk-iac-security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
  - name: Run Snyk to check Infrastructure as Code files for issues
    continue-on-error: false
    uses: snyk/actions/iac@master
    env:
      SNYK_TOKEN: $}
      SNYK_CFG_OCI_REGISTRY_URL: $}
      SNYK_CFG_OCI_REGISTRY_USERNAME: $}
      SNYK_CFG_OCI_REGISTRY_PASSWORD: $}

```
