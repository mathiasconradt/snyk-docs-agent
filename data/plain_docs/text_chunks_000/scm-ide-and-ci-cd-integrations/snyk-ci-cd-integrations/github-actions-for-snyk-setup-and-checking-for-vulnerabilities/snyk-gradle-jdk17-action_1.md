You can use the Snyk Gradle (jdk17) Action to check for vulnerabilities as follows:
yaml
name: Example workflow for Gradle (jdk17) using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/gradle-jdk17@master
        env:
          SNYK_TOKEN: $}
You can use the Snyk Gradle (jdk17) Action to check for only high severity vulnerabilities as follows:
yaml
name: Example workflow for Gradle (jdk17) using Snyk
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Run Snyk to check for vulnerabilities
        uses: snyk/actions/gradle-jdk17@master
        env:
          SNYK_TOKEN: $}
        with:
          args: --severity-threshold=high
