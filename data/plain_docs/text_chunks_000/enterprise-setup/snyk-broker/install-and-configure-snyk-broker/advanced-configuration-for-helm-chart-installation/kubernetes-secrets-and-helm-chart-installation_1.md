Ensure secrets are present on your cluster in the default namespace:
-> NAME:KEY 
-> nexus-broker-token-snyk-broker-chart:nexus-broker-token-key 
-> nexus-base-nexus-url-snyk-broker-chart:nexus-base-nexus-url 
-> nexus-nexus-url-snyk-broker-chart:nexus-nexus-url 
-> nexus-broker-client-validation-url-snyk-broker-chart:nexus-broker-client-validation-url 
```
In this example, four secrets must exist within the same namespace to which the Broker will be installed, each containing one key-value pair. Any values that are shown in <> characters are indicators to add your own secret data.
