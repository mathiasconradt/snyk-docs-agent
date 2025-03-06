On the Snyk Web UI, retrieve your organization ID (UUID format), project ID (UUID), and API key.\
   If you need help in finding these values, see Switch between Groups and Organizations, View and edit Project settings, and Authentication for API.
Determine the format you want for the SBOM you will generate.\
   Available options are CycloneDX 1.4 JSON (cyclonedx1.4+json), CycloneDX 1.4 XML (cyclonedx1.4+xml), CycloneDX 1.5 JSON (cyclonedx1.5+json), CycloneDX 1.5 XML (cyclonedx1.5+xml), CycloneDX 1.6 JSON (cyclonedx1.6+json), CycloneDX 1.6 XML (cyclonedx1.6+xml) or SPDX v2.3 JSON (spdx2.3+json).
Using any HTTP client, for example, Postman or curl, make a request to the endpoint, specifying the latest stable version.\
   Note that the format parameter must be URL-encoded.\
   Example: To retrieve a CycloneDX 1.4 JSON document, set format=cyclonedx1.4%2Bjson on the query. Note that the example has a placeholder for the version; use version 2024-08-22 or later.

$ curl --location 'https://api.snyk.io/rest/orgs/<ORG_ID>/projects/<PROJECT_ID>/sbom?version=yyyy-mm-dd&format=<SBOM_FORMAT>'\
--header 'Authorization: token <SNYK_API_TOKEN>'
