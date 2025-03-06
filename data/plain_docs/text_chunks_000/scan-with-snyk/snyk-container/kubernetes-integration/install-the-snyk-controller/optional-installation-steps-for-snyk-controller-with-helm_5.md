By default, the controller runs without a Pod Security Policy. You can enable it by passing a setting:
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set clusterName="Production cluster" \
             --set psp.enabled=true
You can reuse an existing Pod Security Policy by specifying the name. If you do not specify a name, a new policy is created automatically.
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set clusterName="Production cluster" \
             --set psp.enabled=true \
             --set psp.name=something
