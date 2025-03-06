Unable to access private dependencies
The Go tool encountered a DepsError while trying to download a private dependency. Private repositories that are not accessible to the public internet and are not available on the official Go proxy mirror are cloned with a version control system and built on demand. 
This requires the VCS to have the correct access rights to that repository.
Snyk supports private repositories that are hosted in the same Organization and on the same Project that is scanned for vulnerabilities. The authentication to the private repository is the same as the authentication used to integrate that repository with Snyk. 
This error appears when the authorization credentials do not allow access to the requested private dependency. 
HTTP Status: 422
Help Links:
- https://go.dev/ref/mod#vcs
