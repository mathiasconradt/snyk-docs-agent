Another way to test the rules is by testing the contract with the Snyk CLI by using the Snyk IaC GitHub Action, making sure the generated bundle can be read by the CLI.
To do this, you will need a step for installing the Snyk CLI and a SNYK_TOKEN, which can be found in your Snyk Account Settings.

```
jobs:
  contract_test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
  - uses: actions/setup-node@v1
    with:
      node-version: 15

  - name: Install snyk-iac-rules
    run: npm i -g snyk-iac-rules

  - name: Build bundle
    run: snyk-iac-rules build .

  - name: Run contract with Snyk to check Infrastructure as Code files for issues
    continue-on-error: true
    uses: snyk/actions/iac@master
    env:
      SNYK_TOKEN: $}
    with:
      args: --rules=bundle.tar.gz

```

You can also expand these tests to use Shellspec and verify that the desired vulnerabilities get triggered, but Snyk recommends using the unit tests for this.
