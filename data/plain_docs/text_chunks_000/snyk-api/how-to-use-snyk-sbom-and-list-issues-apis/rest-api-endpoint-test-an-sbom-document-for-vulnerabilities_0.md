Release status and feature availability
The Snyk REST API is available only for Enterprise plans. For more information, see Plans and pricing.
These endpoints are beta API versions. Some of the functionality may change. For more information, see the Versioning information for the REST API.

Snyk offers a collection of API endpoints to asynchronously test a software bill of materials (SBOM) document. You can use these endpoints to learn more about the vulnerabilities impacting your SBOM and its packages.

Supported SBOM formats are CycloneDX 1.4/1.5/1.6 JSON and SPDX 2.3 JSON.

Snyk identifies components within the SBOM by their package URL (purl). If a component does not contain a purl or the purl type is not supported, Snyk skips vulnerability analysis for that component. Supported purl types are: apk, cargo, cocoapods, composer, deb, gem, golang, hex, maven, npm, nuget, pypi, rpm, swift, and generic for unmanaged C/C++ dependencies.
