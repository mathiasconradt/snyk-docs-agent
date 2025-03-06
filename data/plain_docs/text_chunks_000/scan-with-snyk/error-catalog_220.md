Rate limit hit while testing project
Snyk makes requests to your SCM when testing a project, in order to analyze your projects for vulnerabilities. If we need to make a lot of requests in a short time period, we may encounter third party rate limits, and this error can occur.
If you receive any of these errors, try re-running the tests, by closing and reopening the pull request.
HTTP Status: 429
