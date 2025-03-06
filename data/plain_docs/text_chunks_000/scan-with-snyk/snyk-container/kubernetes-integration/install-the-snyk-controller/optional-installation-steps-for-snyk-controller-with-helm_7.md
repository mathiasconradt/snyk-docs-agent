By default, Snyk ignores scanning certain namespaces believed to be internal to Kubernetes. For the full list, see Configuring excluded namespaces.\
\
You can change the default, as Snyk allows you to configure the excluded namespaces.
When you add your own list of namespaces to exclude with the excludedNamespaces setting, Snyk overrides the default settings and uses the list of namespaces you provide.
helm upgrade --install snyk-monitor snyk-charts/snyk-monitor \ 
             --namespace snyk-monitor \
             --set excludedNamespaces=""
