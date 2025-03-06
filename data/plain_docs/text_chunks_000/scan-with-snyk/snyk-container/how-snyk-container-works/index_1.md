When Snyk Container tests an image using any of the available integrations, Snyk first finds the software installed in the image, including:

dpkg, rpm, and apk operating systems packages
Popular unmanaged software (installed outside a package manager)
Application packages, based on the presence of a manifest file


To determine the final file system, Snyk does not squash the layers of the container image into one. Snyk scans for supported application package manifest files in each intermediate layer of the container image, even when those files are deleted by a subsequent layer.

Because Snyk reads the information from the file system, the container does not need to be run. This means that for a successful scan, no container or foreign code must be run.
After Snyk has the list of installed software, Snyk looks that up in the Snyk Vulnerability Database, which combines public sources with proprietary research.

Snyk supports testing OCI-compliant and Docker v2-compliant images but does not support images that combine both OCI and Docker v2 standards into a single archive.

When providing public base image recommendations, Snyk's logic considers the origin repository, flavor, and version of the base image it detects. This means that Snyk's upgrade recommendations aim to reduce the number or severity of found vulnerabilities, with minor version upgrades typically maintaining compatibility with the currently used base image.
