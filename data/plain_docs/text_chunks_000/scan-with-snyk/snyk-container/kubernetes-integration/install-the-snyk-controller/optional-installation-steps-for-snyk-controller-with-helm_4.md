You can change the logging verbosity. Valid levels are INFO, WARN, ERROR and DEBUG. Snyk defaults to INFO. To change the logging verbosity, use the following command:
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set clusterName="Production cluster" \
             --set log_level="WARN"
