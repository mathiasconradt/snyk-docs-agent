You can use the Snyk Gradle Action to check for vulnerabilities as follows:
yaml
name: Example workflow for Gradle using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/gradle@master
        env:
          SNYK_TOKEN: $}
You can use the Snyk Gradle Action to check for only high severity vulnerabilities as follows:
yaml
name: Example workflow for Gradle using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/gradle@master
        env:
          SNYK_TOKEN: $}
        with:
          args: --severity-threshold=high
