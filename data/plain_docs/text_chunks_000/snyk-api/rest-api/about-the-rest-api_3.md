The Snyk REST API has per-endpoint version contracts. For information about the differences in GA versions, see the API Changelog. Each endpoint can have its own release and support lifecycle, independent of any other endpoint in the Snyk REST API. In its most explicit form, the endpoint version number includes a date and stability tree, for example:
2023-11-27~beta
This version number indicates that the requested endpoint should be at stability level 2023-11-27 or older beta. The possible stability levels are:

ga - Generally Available, the default. Snyk will support these for at least six months after the next GA release.
beta - Beta. Snyk will support these for at least three months after the next beta or GA release.
experimental - Experimental. An experimental endpoint should be considered unstable and regarded as a tech preview. Experimental versions may introduce breaking changes and may be discontinued at any time.

In the default case of Generally Available, there is no stability level specified in the version number itself, that is, only the date is present, for example:
2023-11-27
This means the requested endpoint should be 2023-11-27 or older on the Generally Available stability tree.
When the requested endpoint is at a specific stability level, Snyk serves the latest version, the version released on or before the requested date, or that stability or higher. For example, if the requested endpoint has a beta version at 2023-09-29 and GA version at 2024-01-23, and the requested endpoint is after 2024-01-23\~beta, Snyk resolves to the GA version.
Granular version controls enable Snyk to introduce progressive enhancements. These may require small or minor backward-incompatible changes. However, using granular version controls means Snyk can deliver rapid enhancements more quickly while supporting existing endpoints for a guaranteed period of time.
After an endpoint is marked as deprecated, it will contain a Sunset header indicating the date at which that endpoint contract will no longer be supported. For example:
Sunset: "2021-11-11"
