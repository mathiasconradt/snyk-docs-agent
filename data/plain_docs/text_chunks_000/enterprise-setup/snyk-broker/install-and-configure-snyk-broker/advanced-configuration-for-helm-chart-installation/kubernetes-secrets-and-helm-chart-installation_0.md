Beginning with version 2.8.0 of the Snyk Broker Helm Chart, external secrets are supported. 
To enable this functionality, set useExternalSecrets to true in values.yaml or  --set externalSecrets=true. 
To obtain a list of required secrets, perform a dry run of a Helm installation. This will not make any changes to your Kubernetes environment, but does require the following:
helm install snyk-broker-chart \
  snyk-broker/snyk-broker \
  --set externalSecrets=true \
  --set scmType=<your-scm-type> \
  --dry-run=client
A list of secrets with their expected names and values will be generated. The following example uses scmType=nexus :
```
