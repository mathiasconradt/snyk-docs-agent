Required. Specify the file path of the SBOM document.
The snyk sbom test command accepts the following file formats:

CycloneDX: JSON version 1.4, 1.5, and 1.6
SPDX: JSON version 2.3

Packages and components within the provided SBOM file must be identified by a PackageURL (purl).
Supported purl types are: apk, cargo, cocoapods, composer, deb, gem, generic, golang, hex, maven, npm, nuget, pub, pypi, rpm, swift.
Example: $ snyk sbom test --experimental --file=bom.cdx.json
