Snyk Container

Snyk accesses and stores package versions, executable hashes and versions, operating system, container image metadata (for example, rootfs hashes, history), and image ID.
Snyk accesses and stores information pertaining to the parent image: name, version, and tag.
Snyk accesses and stores RUN instructions from Dockerfile.
Kubernetes configurations: Snyk accesses workload security settings, for example, run as root. This is only accessed if you use the Snyk Kubernetes integration.
Container registry integrations: Snyk accesses and then stores a short-term copy of the container image, unless a Broker is used. This copy is removed from the Snyk network after analysis.
