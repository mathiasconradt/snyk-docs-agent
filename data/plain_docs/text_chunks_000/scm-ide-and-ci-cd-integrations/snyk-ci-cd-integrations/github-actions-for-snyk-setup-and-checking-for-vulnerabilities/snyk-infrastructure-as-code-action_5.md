You can also choose the scan mode, when scanning Terraform Plan files.
yaml
name: Example workflow for Snyk Infrastructure as Code
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Run Snyk to check Kubernetes manifest file for issues
        uses: snyk/actions/iac@master
        env:
          SNYK_TOKEN: $}
        with:
          args: --scan=resource-changes
