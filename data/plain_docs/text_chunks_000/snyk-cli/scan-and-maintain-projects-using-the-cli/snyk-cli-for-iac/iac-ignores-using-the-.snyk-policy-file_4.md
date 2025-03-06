Individual instances of a vulnerability within a file can be ignored. To do this, take the “resource path” from the output of snyk iac test, and add it to the file path.
For example, from the following output snippet (line break added for ease of reading):
Testing production/deployment.yaml...Infrastructure as code issues:
  ✗ Container is running in privileged mode [High Severity] [SNYK-CC-K8S-1] in Deployment
    introduced by [DocId: 0] > input > spec > template > spec > containers[web] 
    > securityContext > privileged
you could generate the scoped ignore rule with the Snyk CLI by running the following command:
```
 snyk ignore --id=SNYK-CC-K8S-1 --path='production/deployment.yaml > [DocId:1] > spec > template > spec > containers[web] 

securityContext > privileged'
```

Alternatively, manually modify the policy file as follows:
version: v1.19.0
ignore:
  SNYK-CC-K8S-1:
    - 'production/deployment.yaml > [DocId:1] > spec > template > spec > containers[web] > securityContext > privileged':
        reason: None Given
        expires: 2021-08-26T08:40:35.249Z
        created: 2021-07-27T08:40:35.251Z
For more information about the Snyk CLI ignore command, see Ignore vulnerabilities using Snyk CLI.
