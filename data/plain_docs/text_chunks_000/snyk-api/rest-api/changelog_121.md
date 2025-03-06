In order to create a custom base image, you first need to import your base images into Snyk.
You can do this through the CLI, UI, or API.

This endpoint marks an image as a custom base image. This means that the image will get
added to the pool of images from which Snyk can recommend base image upgrades.
Note, after the first image in a repository gets added, a versioning schema cannot be passed in this endpoint.
To update the versioning schema, the PATCH endpoint must be used.
