Result: Image successfully matched, and risk factor applied
Matching of names
The container image is scanned referencing a partial name, omitting the container registry. 
An example scan follows:
$ snyk container monitor my-app:latest
Insights is not able to match this Project as the names do not match. 
The image is deployed to your Kubernetes cluster with this example manifest.
spec:
 containers:
 - name: my-app
 image: gcr.io/my-company/my-app:latest
In addition, the same image is scanned by the container registry. 
This creates a Project with the full name of the image, including the registry, enabling a match to be made. 
This also includes the image digest. 
Insights is then able to group all Snyk Container Projects by image digest, enabling a deployment match on the CLI Project with the partial name through the container registry Project.  
This enables Insights to successfully match both Snyk Container Projects and apply the Deployed risk factor to all issues associated with those Projects. 

Snyk recommends always specifying the full name of the image in your CLI command. If you are not able to do this, Snyk recommends also scanning the same image using a second integration.
