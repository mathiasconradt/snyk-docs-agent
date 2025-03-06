Scan archives
In addition to scanning images from a local Docker daemon or remote registry, Snyk can directly scan or monitor a Docker or OCI archive by running the following commands: snyk container test docker-archive:<filename>.tar or snyk container test oci-archive:<filename>.tar. 
Examples:
snyk container test docker-archive:archive.tar
snyk container test oci-archive:archive.tar

Forcrane, Snyk supports only the formats --format=oci and--format=legacy.
