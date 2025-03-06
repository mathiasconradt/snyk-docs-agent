After you configure Snyk to fail the build when vulnerabilities are detected, you can configure Snyk to send a snapshot of your project's successful builds to Snyk for ongoing monitoring.
To do this, configure your pipeline to run snyk monitor if your snyk test returns a successful exit code.
