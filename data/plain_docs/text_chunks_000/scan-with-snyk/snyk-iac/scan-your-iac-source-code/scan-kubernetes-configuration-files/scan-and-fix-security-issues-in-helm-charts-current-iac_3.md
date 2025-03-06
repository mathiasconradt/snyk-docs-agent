Sometimes testing a chart using only the default values is not enough, or a dependency is either a subchart or not publicly downloadable. Snyk does not support these scenarios during imports. This section is intended to offer guidance on how to template custom configurations outside of Snyk and scan the resultant Kubernetes manifests.
You can use the Snyk CLI and Helm in conjunction:
bash
cd /path/to/helm/chart
helm dependency update
helm template . --output-dir out
snyk iac test out/
You can pass standard Helm values flags (for example, --set, --value, or both) to helm template in order to test a non-default configuration.
You can script this process and run it in a CLI pipeline or helm-template files into a repository that can be imported into Snyk as Projects.
To share CLI results with the Snyk Web UI, use the --report CLI option. For example:
snyk iac test out/ --report
