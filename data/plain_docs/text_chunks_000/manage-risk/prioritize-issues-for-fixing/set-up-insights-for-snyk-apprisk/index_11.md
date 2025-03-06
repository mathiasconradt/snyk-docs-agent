Runtime providers may report different names that refer to the same Kubernetes cluster. You can add a cluster name mapping to let Insights correlate resources from the two data sets. 
For example, if Snyk reports a cluster name as dev, and an integration reports the same cluster name as dev-foo, you can add a mapping for the integration with a source name of dev-foo and a target name of dev.

Ensure each source name is assigned to only one cluster mapping.
