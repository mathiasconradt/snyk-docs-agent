Configure the Snyk pipe
Configure the following Snyk pipe as part of a pipeline YAML file in order to include vulnerability scanning as part of your CI/CD workflow:
- pipe: snyk/snyk-scan:1.0.0
  variables:
    // variables go here
