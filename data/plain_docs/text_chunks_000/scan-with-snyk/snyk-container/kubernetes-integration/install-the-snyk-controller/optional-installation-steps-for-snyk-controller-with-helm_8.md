If more resources are required to deploy the controller, configure the Helm Chart default value for requests and limits with the --set flag.
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set requests."ephemeral-storage"="50Gi"
             --set limits."ephemeral-storage"="50Gi"
