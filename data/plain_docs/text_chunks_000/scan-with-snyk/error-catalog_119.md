Unable to fetch private dependencies
The Go tool encountered a permissions error while fetching one of the private dependencies. Ensure that the integration token you used to sign in to Snyk is properly configured so that Snyk can access the private dependencies.
The Snyk Go integration only supports private dependencies that are used inside the same Organization as the Project you are scanning.
This error appears when Snyk is unable to properly access the authorization credentials for the requested private dependency. 
HTTP Status: 401
