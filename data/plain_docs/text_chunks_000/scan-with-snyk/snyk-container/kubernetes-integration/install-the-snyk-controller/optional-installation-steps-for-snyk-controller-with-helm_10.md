If more or less CPU is required in order to deploy the controller, configure the HelmChart default value for requests (X) and limits (Y) with the --set flag.
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set requests.cpu="X"
             --set limits.cpu="Y"
