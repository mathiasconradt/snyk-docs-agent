To enable the application vulnerability scan from container registries:

Navigate to Integrations, and then to your container registry integration settings.
Enable Detect application vulnerabilities and save the changes.

Enable Detect application vulnerabilties
When you are scanning an image using a container registry or Kubernetes integration, the scan also uses the --app-vulns flag by default. You can opt out of the flag in the container registry only. To do this, disable the Detect application vulnerabilities feature.

* For Java, when you use the flag, Snyk scans one level of nested jars by default.
* For Python, Snyk supports Poetry and Pip (in all integration points).
* For Go binaries, Snyk supports any type of Go binary built with Go module support.
