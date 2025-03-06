The Snyk GitHub Actions for each language automatically install all the required development tools for Snyk to determine the correct dependencies and hence vulnerabilities from different language environments. If you have a workflow where you already have the development tools installed, you can instead use the snyk/actions/setup Action to install only Snyk CLI. An example follows:
yaml
name: Snyk example
on: push
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - uses: snyk/actions/setup@master
      - uses: actions/setup-go@v1
        with:
          go-version: '1.19'
      - name: Snyk test
        run: snyk test
        env:
          SNYK_TOKEN: $}
The example here uses actions/setup-go. You must select the right action to install the relevant development requirements for your project. If you are already using the same pipeline to build and test your application, you are likely already installing the relevant development requirements.
