To install a public container registry, you must create a Kubernetes secret called snyk-monitorcontaining the Snyk Integration ID and the service account token.
To do this, run the following command:
kubectl create secret generic snyk-monitor -n snyk-monitor \
        --from-literal=dockercfg.json={} \
        --from-literal=integrationId=abcd1234-abcd-1234-abcd-1234abcd1234 \
        --from-literal=serviceAccountApiToken=bdca4123-dbca-4343-bbaa-1313cbad4231

For a successful integration, the secret must be called snyk-monitor.
