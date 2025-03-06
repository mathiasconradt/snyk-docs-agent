If you are using a proxy for the outbound connection to Snyk, you must configure the integration to use that proxy. To configure the proxy, set the following values provided in the Helm Chart:

http_proxy
https_proxy
no_proxy

For example:
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \
             --namespace snyk-monitor \
             --set clusterName="Production cluster" \
             --set https_proxy=http://192.168.99.100:8080

The integration does not support CIDR address ranges or wildcards in the no_proxy value. Only exact matches are supported.
