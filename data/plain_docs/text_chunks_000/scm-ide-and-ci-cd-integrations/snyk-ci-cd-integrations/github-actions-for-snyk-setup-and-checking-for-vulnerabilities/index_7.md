By using the args property of the action you can use all of the options and capabilities of the Snyk CLI. This example shows use of the option --severity-threshold=high.
yaml
name: Example workflow using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/node@master
        env:
          SNYK_TOKEN: $}
        with:
          args: --severity-threshold=high
