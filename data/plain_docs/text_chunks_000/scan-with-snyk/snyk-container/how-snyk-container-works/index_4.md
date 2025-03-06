Snyk continuously discloses new vulnerabilities. Snyk can alert you to new vulnerabilities in your image as they are announced, even when your installed image software has not changed.
If you use an integration that saves a snapshot of the installed software on Snyk’s service and the image has not changed, Snyk Container automatically rescans without accessing the image, alerting you to new vulnerabilities.
If the image has changed, you must reimport your image, so that Snyk can access the updated image and its metadata before rescanning it.

Recurring scans do not detect updates to the dependencies of your applications. The recurring scans test for new vulnerabilities using a snapshot of your application dependencies at the time the application was imported.\
\
To detect changes in your application, such as updated dependencies, you must re-import your container image in Snyk.
