You can use the Snyk Scala Action to check for vulnerabilities as follows:
yaml
name: Example workflow for Scala using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/scala@master
        env:
          SNYK_TOKEN: $}
You can use the Snyk Scala Action to check for only high severity vulnerabilities as follows:
yaml
name: Example workflow for Scala using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/scala@master
        env:
          SNYK_TOKEN: $}
        with:
          args: --severity-threshold=high
