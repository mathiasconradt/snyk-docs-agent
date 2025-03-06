For a successful integration with Sysdig, the Snyk Controller requires an extra Sysdig Secret in the snyk-monitor namespace. The Sysdig Secret name is snyk-sysdig-secret.

Execute the commands below after installing Sysdig, in order to allow the Snyk Controller to detect Sysdig in the cluster.

Create the snyk-sysdig-secret in the snyk-monitor namespace:
kubectl create secret generic snyk-sysdig-secret -n snyk-monitor \
  --from-literal=token=$SYSDIG_RISK_SPOTLIGHT_TOKEN \
  --from-literal=endpoint=$SYSDIG_ENDPOINT_URL \
  --from-literal=cluster=$SYSDIG_AGENT_CLUSTER
SYSDIG_RISK_SPOTLIGHT_TOKEN is the "Risk Spotlight Integrations Token" and must be generated through the Sysdig UI. To create this API token, see the Sysdig Risk Spotlight guide.
SYSDIG_ENDPOINT_URL is associated with your Sysdig SaaS application and region. To identify it, see SaaS Regions and IP Ranges. For example, for US West (Oregon), the domain is us2.app.sysdig.com (you must omit the prefix "https://").
SYSDIG_AGENT_CLUSTER are the ones that you configured when installing the Sysdig Agent - global.clusterConfig.name.
To enable Snyk to integrate with Sysdig and collect information about packages executed at runtime, use --set sysdig.enabled=true when installing the Snyk Controller:
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
  --namespace snyk-monitor \
  --set clusterName="Production cluster" \
  --set sysdig.enabled=true
Your Snyk Controller now collects data from Sysdig every 30 minutes.
