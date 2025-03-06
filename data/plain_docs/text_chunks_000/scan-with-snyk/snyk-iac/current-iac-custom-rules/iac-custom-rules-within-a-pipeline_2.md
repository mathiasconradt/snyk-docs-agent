An example of a PR check can be seen in https://github.com/snyk/custom-rules-example/pull/5 where there is an attempt to add a new rule called my_rule. This is the same rule shown for learning how to write a rule.
To verify that this rule works as expected, unit tests were implemented. To run the unit tests as part of PR checks, a GitHub Action was configured previously under .github/workflows called test.yml:

```
name: Test Custom Rules
on:
  push:
    branches:
      - '**'        # matches every branch
      - '!main'     # excludes main
jobs:
  unit_test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
  - uses: actions/setup-node@v1
    with:
      node-version: 15

  - name: Install snyk-iac-rules
    run: npm i -g snyk-iac-rules

  - name: Run unit tests
    run: snyk-iac-rules test

```

A few things to note about this workflow:

It was configured to run on all non-main branches, so that it runs when PRs are open.
Steps were added steps to set up a Node.js environment to enable installing the snyk-iac-rules SDK using npm.
A step was added to run snyk-iac-rules test, which will cause the PR check to fail if any of the tests fail.


You must configure your main branch under Settings -> Branchesfirst, so that no one can push directly to main.
