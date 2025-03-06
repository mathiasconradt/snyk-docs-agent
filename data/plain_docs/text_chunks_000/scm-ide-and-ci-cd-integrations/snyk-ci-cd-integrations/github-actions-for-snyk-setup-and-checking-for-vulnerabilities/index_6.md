If you want to send data to Snyk and be alerted when new vulnerabilities are discovered, run snyk monitor as follows:
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
          command: monitor
