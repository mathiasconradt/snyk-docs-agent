A single Kubernetes secret may contain all required credentials for the Snyk Broker to operate. Using a Broker of type nexus as an example, assume this secret is present in Kubernetes:
apiVersion: v1
kind: Secret
metadata:
  name: snyk-broker-secrets
type: Opaque
data:
  nexus-broker-token-key: <broker-token-here>
  nexus-nexus-url: https://user:pass@nexus.tld/myrepository
  nexus-base-nexus-url: https://user:pass@nexus.tld
  nexus-broker-client-validation-url: https://user:pass@nexus.tld/service/rest/v1/status/check
To specify this secret for all required values for scmType=nexus, set:
```
brokerTokenSecret:
  name: snyk-broker-secrets
nexusUrlSecret:
  name: snyk-broker-secrets
baseNexusUrlSecret:
  name: snyk-broker-secrets
brokerClientValidationUrlSecret:
  name: snyk-broker-secrets
```
