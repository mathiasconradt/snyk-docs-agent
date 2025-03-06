You can also choose to only report on high severity vulnerabilities.
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
          file: your/kubernetes-manifest.yaml
          args: --severity-threshold=high
