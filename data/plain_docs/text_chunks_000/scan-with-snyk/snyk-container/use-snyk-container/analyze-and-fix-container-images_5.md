If the Project is imported from a registry integration, on the Projects page, it is marked with the relevant registry icon. If the Project is imported from the CLI, it is marked with a CLI icon. You can also filter to display all container Projects.
When you open a container Project, the analysis and fix advice appear for that Project.
Analysis and fix advice for a container Project
The following information is displayed:

Project summary: general Project details, including unique details:
Image ID - derived from the container image digest
Image tag
Base Image
Total dependencies with known vulnerabilities and the total number of vulnerabilities
Fix advice: If you included your Dockerfile for monitoring, available and actionable fix advice is displayed. To view all fix advice, click Show more upgrade types. 

The Issues tab provides a list of vulnerabilities, including origins and paths, as well as an overview of the vulnerabilities.
In the issues list, you can use the filters available for all supported Project types, as well as the following filters:

OS BINARIES - to see specific binary or OS packages for binaries and packages containing issues.
IMAGE LAYER - to see Dockerfile instructions. If you attach a Dockerfile, you can filter to view issues associated only with the base image, view Dockerfile-related advice (user instruction), or both.

Filters for OS binaries and image layers

The OS BINARIES filter does not appear if there is only one category of issues in your container, for example, Node binary vulnerabilities or OS packages.\
The IMAGE LAYER filter does not appear if there is no Dockerfile attached. 

The Dependencies tab provides a tree view of the package hierarchy inside the image.
