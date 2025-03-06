Build a custom base image.
Import the image to a Snyk Project using one of the following options:
The Snyk Web UI: Import an image into Snyk using a container registry.
The CLI: Use the snyk container monitor  command.
Set the --project-name flag (mandatory) to give the Project a unique name. Snyk recommends using the image name and tag without the repository. For example base-python:3.9.2_2021110408.
Example of a Snyk CLI command: \
   snyk container monitor somecompany/base-python:3.9.2_2021110408 --project-name=base-python:3.9.2_2021110408 --org=ORGANIZATION_ID/ORGANIZATION_NAME
