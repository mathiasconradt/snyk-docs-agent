Snyk AppRisk determines that a container image is deployed by looking for a match between the running images on the Kubernetes cluster and the created Snyk Container Projects.
Snyk AppRisk uses Kubernetes state information to extract Docker image identifiers that are being executed. The status of a Kubernetes container has image names that are being run by the Kubernetes runtime. A search is performed on the database of known Docker images to find matching names. When the image names are matched, Snyk can display this information in a graph. The graph shows the relationship between the image and the container. \
A vulnerability in a deployed image
Kubernetes is very specific about how images are managed. Snyk uses the same logic to map the images Snyk knows about. Whenever you scan an Image with Snyk Container, Snyk collects information about the image name and image ID. Snyk uses this information to map images against information from Kubernetes.

Snyk adheres to the defined naming standards as documented for Kubernetes and Docker images to ensure consistency with Kubernetes. 

Naming standards
Consider the following examples:\
User-provided name in Kubernetes manifest Name used in matchingChanged (yes/no)gcr.io/my-company/my-app:productiongcr.io/my-company/my-app:productionNogcr.io/my-company/my-app:latestgcr.io/my-company/my-app:latestNogcr.io/my-company/my-appgcr.io/my-company/my-app:latestYes - latest tag appendedmy-appdocker.io/my-app/my-app:latestYes - defaulted to Docker public registry, latest tag appended
The matching uses the following order of precedence, where the first step must pass for at least one Snyk Container Project, and the subsequent steps further validate the match. 

Match the image name, for example, gcr.io/my-company/my-app:latest.
Match the image digest.
Group Snyk Container Projects by image digest.

Consider the examples that follow.
