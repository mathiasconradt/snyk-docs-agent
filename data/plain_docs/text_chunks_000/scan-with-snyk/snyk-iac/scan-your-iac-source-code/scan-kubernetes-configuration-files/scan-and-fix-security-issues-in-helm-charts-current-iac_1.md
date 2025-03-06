An administrator must connect your Organization with your preferred Git repository and enable the detection of configuration files as explained for Terraform files.
The repository should follow the standard Chart directory structure. However the charts/ sub-directory is not supported.
Snyk supports only templating Helm charts using the default values file, values.yaml.
If you want to scan particular configurations of Helm values, the supported workflow is to template the chart outside of Snyk and scan the manifests as regular Kubernetes files.
Helm charts that cannot be templated from their default values file are not supported.
Any chart dependencies must be publicly downloadable from the configured Helm repository. Subcharts or non-publicly downloadable dependencies are not supported. The supported workflow in these cases is to template the chart outside of Snyk and scan the manifests as regular Kubernetes files.
