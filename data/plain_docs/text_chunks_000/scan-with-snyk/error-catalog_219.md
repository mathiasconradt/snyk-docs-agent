Manifest not found
Snyk uses your project manifest file to analyze your projects for vulnerabilities. When you import a project for monitoring, Snyk scans the project to locate the manifest file and then remembers where that file is. 
When a project manifest file is moved or deleted, we still try to look for in it in the last known location in order to run tests on commit statuses. If we can't find the file, this error can occur.
If this happens, you could try the following:
1. Delete the matching project from your account in the Snyk app (UI or CLI).
2. Now import the same project from scratch.
As during the original import, Snyk scans the project and locates the manifest file.
HTTP Status: 404
Help Links:
- https://support.snyk.io/s/article/Manifest-not-found
