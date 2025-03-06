Instead of relying on predefined jobs, customers can use the Snyk orb to install the Snyk CLI and then run commands as their own steps. See this install example in the snyk-orb repository.
In the case of replacing scan-iac job, an example config could look like the following:
yaml
version: 2.1
orbs:
  node: circleci/node@5
  snyk: snyk/snyk@2.1.0
jobs:
  snyk_scan:
    docker:
      - image: cimg/node:lts
    steps:
      - checkout
      - run: npm ci
      - snyk/install
      - run:
          command: snyk iac test
          name: Run iac test
