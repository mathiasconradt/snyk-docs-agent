By default, the task uses the https://api.snyk.io endpoint. To configure Snyk to use a different endpoint set a SNYK_API environment variable in the pipeline, for example, https://api.eu.snyk.io.
For more information about environment configuration, see Configure the Snyk CLI. For more details, see the list of available regions on the Regional hosting and data residency page.
An example follows of  how you can modify the Snyk scan task to use an alternate endpoint:
```
variables:
  SNYK_API: http://api.us.snyk.io/
...

task: SnykSecurityScan@1
  inputs:
   ...
  env:
    SNYK_API: '$(SNYK_API)'
```
