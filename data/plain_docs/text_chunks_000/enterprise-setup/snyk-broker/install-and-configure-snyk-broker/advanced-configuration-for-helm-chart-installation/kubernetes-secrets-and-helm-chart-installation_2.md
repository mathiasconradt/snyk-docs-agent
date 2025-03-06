Each of the following Helm values supports name and key, to allow the Snyk Broker Helm Chart to reference a specific secret name and key within that secret:

externalCredentialSecret (used for any Broker type that is not artifactory, nexus or nexus2 for the required password or PAT associated with the Broker type)
brokerTokenSecret (used for your Broker token)
scmTokenPoolSecret (used if Credential Pooling is enabled)
artifactoryUrlSecret (required for artifactory only)
baseNexusUrlSecret (required for nexus and nexus2 only)
nexusUrlSecret (required for nexus and nexus2 only)
brokerClientValidationUrlSecret (required for nexus and nexus2 only, optionally set for artifactory)

For example, if your Kubernetes cluster has a secret with a Broker token in the following form:
apiVersion: v1
kind: Secret
metadata:
  name: snyk-broker-secrets
type: Opaque
data:
  org-x-broker-token: <broker-token-here>
Set the following:
```
useExternalSecrets: true
brokerTokenSecret:
  name: snyk-broker-secrets
  key: org-x-broker-token
```
The Helm Chart will reference the contents under the org-x-broker-token key in Secret snyk-broker-secrets for the Broker token.
