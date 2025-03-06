Ignore rules can be scoped more narrowly. To scope the ignore to a single file, change the * to the path of that single file relative to the directory being tested that contains the .snyk policy file.
You can specify scoped ignore rules either by using the ignore command in the Snyk CLI or manually modifying the .snyk file.
In the following example, an issue is being ignored with the SNYK-CC-K8S-1 ID in two specific files:

staging/deployment.yaml
staging/cronjob.yaml

You can generate the scoped ignore rules with the Snyk CLI by running the following commands:
snyk ignore --id=SNYK-CC-K8S-1 --path='staging/cronjob.yaml > *'
snyk ignore --id=SNYK-CC-K8S-1 --path='staging/deployment.yaml > *'
Alternatively, manually modify the .snyk policy file as follows:
version: v1.19.0
ignore:
  SNYK-CC-K8S-1:
    - 'staging/deployment.yaml > *':
        reason: None Given
        expires: 2021-08-26T08:40:35.249Z
        created: 2021-07-27T08:40:35.251Z
  - 'staging/cronjob.yaml > *':
        reason: None Given
        expires: 2021-08-26T08:40:35.249Z
        created: 2021-07-27T08:40:35.251Z
For more information about the Snyk CLI ignore command, see Ignore vulnerabilities using Snyk CLI.
