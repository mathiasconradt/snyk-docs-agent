You can adjust the workers number (XX) with the--set flag.
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set workers.count="XX"
