If you do not want to use the Bitbucket snyk/snyk-scan integration, you have the option to install and use the Snyk CLI directly.

If you use this option, you will be unable to use integration features such as Code Insight Results

The following example shows using the CLI directly.
In the example bitbucket-pipeline.yml configuration that follows, a pipeline is configured that does the following:

Downloads the CLI
Validates the CLI with a SHASUM check
Runs the CLI to test the code

```yaml
image: node:18
pipelines:
  default:
    - step:
        name: Build
        caches:
          - node
        script:
          - npm install
    - step:
        name: Snyk scan
        script:
          # Download Snyk Linux CLI
          - curl https://downloads.snyk.io/cli/latest/snyk-linux -o snyk-linux
          # Download Snyk Linux CLI SHASUM
          - curl https://downloads.snyk.io/cli/latest/snyk-linux.sha256 -o snyk.sha256
          # Validate binary using SHASUM
          - sha256sum -c snyk.sha256
          # Configure CLI for executtion
          - chmod +x snyk-linux
          - mv snyk-linux /usr/local/bin/snyk
          # Run Snyk CLI
          - snyk test --all-projects -d
```
 
\
