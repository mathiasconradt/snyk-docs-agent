To identify vulnerable base images, you can use one of the following methods:

Auto-detection - when Snyk analyses your container image, it extracts relevant metadata from the image manifest, and detects the base image. This method analyses rootfs layers from the image manifest, which can be equivalent to more than one image or image tag in DockerHub.
Dockerfile - Snyk can also detect vulnerable base images using your Dockerfile. It can either be attached with a --file flag to your CLI snyk container test scan, linked from an SCM through your Project settings, or detected and scanned when you import a Git repository. Compared to auto-detection, using your Dockerfile can be more accurate but requires an additional step.\
  \
  For multi-stage Dockerfiles, Snyk detects the base image included in the image introduced in the final FROM line. According to  Docker's multi-stage build documentation, this happens because using multiple FROM statements lets you "selectively copy artifacts from one stage to another, leaving behind everything you don't want in the final image."

For either method, a Project in the Snyk UI is created.

Snyk supports only a subset of official Docker images. If you need help, contact Snyk Support.
