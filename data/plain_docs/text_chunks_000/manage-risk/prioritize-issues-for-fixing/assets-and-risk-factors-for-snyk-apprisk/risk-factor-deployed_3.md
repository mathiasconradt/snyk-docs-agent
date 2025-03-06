Result: Image successfully matched, and risk factor applied
Image matched
The container image is scanned using the Snyk Container CLI only, referencing the full name of the image, including the registry. Snyk recommends doing this after the image is built and before it is deployed to your cluster.
An example scan follows:
 $ snyk container monitor gcr.io/my-company/my-app:latest
The image is deployed to your Kubernetes cluster with this example manifest:\
spec:
 containers:
 - name: my-app
 image: gcr.io/my-company/my-app:latest
This enables Insights to successfully match the image name and apply the Deployed risk factor to all issues associated with this Snyk Container Project.
