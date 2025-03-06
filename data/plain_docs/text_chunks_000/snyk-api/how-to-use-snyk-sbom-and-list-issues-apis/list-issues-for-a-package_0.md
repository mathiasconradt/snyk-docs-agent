The Snyk REST API endpoint List issues for a package can be used to get all direct (non-transitive) vulnerabilities for a package using its purl, which is a uniform way of identifying software packages across ecosystems as defined in the package URL specification.
When you pass a purl to the endpoint, Snyk will find any known vulnerabilities for that package and return them as part of the response body.
The API is useful when you have a list of packages and want to retrieve a list of vulnerabilities for a package version.

The examples on this page use HTTPie, but you can use any HTTP client to access the Snyk REST API.
