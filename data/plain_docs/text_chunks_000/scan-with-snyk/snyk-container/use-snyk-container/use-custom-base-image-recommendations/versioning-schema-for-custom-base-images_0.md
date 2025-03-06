You must set a versioning schema for the first Project you mark as a custom base image in the image's repository. You can edit the Custom base Image settings for Projects that you have already marked as custom base images. For details, see Mark the created Project as a custom base image.
You can manage the versioning schema for images imported to Projects for a repository in the Web UI  or by using the API endpoint Create a Custom Base Image from an existing container project.
Snyk recommends updating a custom base image to the latest available version from the pool of images imported as Projects, marked as custom base images, and enabled for recommendations. For more information, see Enable CBIR.
To determine which is the latest version, Snyk uses a versioning schema that allows comparing image tags.
Snyk supports the following versioning schemas.
