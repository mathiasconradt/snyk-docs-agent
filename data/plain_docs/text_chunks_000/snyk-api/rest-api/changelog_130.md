GET - /orgs//projects//sbom - Added

This endpoint lets you retrieve the SBOM document of a software project.
It supports the following formats:
CycloneDX version 1.4 in JSON (set format to cyclonedx1.4+json).
CycloneDX version 1.4 in XML (set format to cyclonedx1.4+xml).
SPDX version 2.3 in JSON (set format to spdx2.3+json).

By default it will respond with an empty JSON:API response.
