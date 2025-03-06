Specifying paths
You can specify the paths to the configuration files and directories to target during the test.\
When no path is specified, the whole repository is scanned by default.
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
          file: your/kubernetes-manifest.yaml your/terraform/directory
