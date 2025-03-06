The .snyk file has some limitations for IaC Projects. See The .snyk file for standard functionality.

The patches section is not yet supported and is ignored.
There are no IaC-supported language settings. This section is ignored.

When you run snyk iac test against a directory, either by passing in one or more directories or using the default argument of the current working directory, the Snyk CLI looks for a file named .snyk in each of those directories.
The syntax of the policy file is as follows:
version: v1.19.0
ignore:
  SNYK-CC-K8S-1:
    - '*':
        reason: None Given
        expires: 2021-08-26T08:40:35.249Z
        created: 2021-07-27T08:40:35.251Z
The * object key causes the CLI to ignore all instances of the SNYK-CC-K8S-1 vulnerability. You can add multiple entries, keyed by the IaC issue ID, to ignore multiple vulnerabilities.
