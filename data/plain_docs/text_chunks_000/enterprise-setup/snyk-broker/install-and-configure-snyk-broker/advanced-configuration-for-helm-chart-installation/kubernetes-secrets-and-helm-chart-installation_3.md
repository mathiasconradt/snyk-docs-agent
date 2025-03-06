When useExternalSecrets is true, the Broker Helm Chart will check whether a value is provided for a secret (for example, brokerToken=<your-broker-token>)

If a value exists, create a secret as usual.
If no value exists, look for an external secret.

By this means, some secrets may be controlled by the Broker Helm chart, and others controlled externally:
scmType: github-com
brokerToken: <my-broker-token>
useExternalSecrets: true
githubToken: ""
This set of values will:

Create a secret for the provided Broker token
Reference an external secret for the required GitHub token

Performing a dry run of a Helm installation will provide the required secret names and keys:
```
