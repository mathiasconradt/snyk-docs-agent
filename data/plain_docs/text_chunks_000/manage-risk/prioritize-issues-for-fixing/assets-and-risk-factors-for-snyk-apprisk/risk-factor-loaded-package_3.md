The runtime integrations must provide a list of packages loaded in a container running within Kubernetes. The container is identified by:

the Kubernetes cluster name
the Kubernetes namespace
the Kubernetes container name
the Kubernetes image name

When you run the risk-based prioritization for Snyk AppRisk pipelines, a snapshot of this information is used to attach lists of loaded packages to the deployed images and facts Snyk knows about.
The packages are identified by:

package manager
name 
version

The Snyk issues associated with deployed images are evaluated to label any that have a matching loaded package.
The image name, package name, and other details are provided by the runtime data provider and must match the details Snyk identified in order for the loaded package risk factor to be attached to an issue.
