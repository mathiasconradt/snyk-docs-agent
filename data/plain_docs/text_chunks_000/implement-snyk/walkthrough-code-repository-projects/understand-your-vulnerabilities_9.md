Snyk uses the package manager of your application to build the dependency tree and display it in the Dependencies tab of the Project view:
Dependencies for Open Source vulnerabilities
Click the file tree icon () to build the dependency tree, showing which components introduce a vulnerability. This helps you understand how the dependency was introduced to the application:
Dependency tree details
For example, the above screenshot shows a vulnerability based on the transitive dependency qs@2.2.4, brought in from the direct dependency body-parser@ 1.9.0.
Now you understand your vulnerability information, you can decide how to fix it.
Continue with Fix your first vulnerability.
