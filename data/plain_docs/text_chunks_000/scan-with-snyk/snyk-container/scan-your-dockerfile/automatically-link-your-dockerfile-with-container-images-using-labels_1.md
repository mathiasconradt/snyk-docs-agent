When it is imported or rescanned, the image is analyzed and scanned for vulnerabilities. Image labels are also retrieved from the image manifest. Snyk then checks that:

Image labels defining the Dockerfile location exist:
org.opencontainers.image.source - URL to the Project repository (mandatory)
io.snyk.containers.image.dockerfile - path to the Dockerfile, for example,  "/Dockerfile-prod" (optional)
The Dockerfile Project exists in the same Organization, with a matching repository (and path or /Dockerfile) from the image labels.

If these conditions apply, Snyk automatically creates a link between the image and the Dockerfile Project.
