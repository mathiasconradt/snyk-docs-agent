$ snyk container sbom --format=cyclonedx1.6+json redis:latest > mySBOM.json
Create a SPDX JSON document for an image while excluding application dependencies
$ snyk container sbom --format=spdx2.3+json redis:latest --exclude-app-vulns
