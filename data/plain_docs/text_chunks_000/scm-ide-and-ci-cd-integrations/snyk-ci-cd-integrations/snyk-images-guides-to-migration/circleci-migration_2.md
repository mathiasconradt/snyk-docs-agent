Alternatively, customers who prefer not to rely on the Snyk CircleCI orb or wish to have complete control over their pipelines can opt to install the Snyk CLI directly. An example follows:
yaml
version: 2.1
jobs:
  snyk_scan:
    docker:
      - image: cimg/node:lts
    steps:
      - checkout
      - run: npm ci
      - run:
          name: Download Snyk CLI
          command: |
            curl -Lo snyk-linux https://downloads.snyk.io/cli/stable/snyk-linux
      - run:
          name: Download Snyk CLI SHA256 Checksum
          command: |
            curl -Lo snyk-linux.sha256 https://downloads.snyk.io/cli/stable/snyk-linux.sha256
      - run:
          name: Verify SHA256 Checksum
          command: |
            sha256sum -c snyk-linux.sha256
      - run:
          name: Install Snyk CLI
          command: |
            chmod +x snyk-linux
            ./snyk-linux --version
      - run:
          name: Run Snyk iac test
          command: |
            ./snyk-linux iac test
workflows:
  version: 2
  build_and_scan:
    jobs:
      - snyk_scan
