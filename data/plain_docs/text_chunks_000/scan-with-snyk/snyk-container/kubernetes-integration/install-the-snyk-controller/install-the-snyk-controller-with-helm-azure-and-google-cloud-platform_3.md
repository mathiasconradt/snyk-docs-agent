helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set clusterName="Production cluster"
If you are running your own instance of Snyk, you must specify the API endpoint when installing the controller.
In the following command, provide the full hostname of your Snyk instance.
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set clusterName="Production cluster" \
             --set integrationApi=https://<server>/kubernetes-upstream

Replace "Production cluster" with a name based on the cluster you are monitoring. You can use this label to find workloads in Snyk later.
Using / (slash) in the cluster name is not allowed. Any /in the cluster names are removed.
To avoid renaming the cluster on every update, you can use the existing option from Helm --reuse-values. When upgrading, Helm reuses the values from the last release and merges them in any overrides from the command line using --set and -f
