Generate an SBOM for unmanaged software projects.
[--dev]
Include development-only dependencies in the SBOM output.
Applicable only for some package managers, for example, devDependencies in npm or :development dependencies in Gemfile.
When --dev is used with the SPDX format, the development-only dependencies are included in the DEV_DEPENDENCY_OF relationship.
When --dev is used with the CycloneDX format, development-only dependencies are not labeled differently from non-development dependencies.
This option can be used with Maven, npm, and Yarn projects.
