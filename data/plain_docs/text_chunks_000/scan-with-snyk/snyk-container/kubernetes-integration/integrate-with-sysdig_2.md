To enrich the priority score of vulnerabilities it detects, Snyk uses packages executed at runtime.  This allows Snyk to better prioritize which vulnerabilities to fix first. The priority score is available on both the Project page and in the Snyk public API.

To see which packages have been executed at runtime, you must wait for the next daily scan or manually import the workload into Snyk.
After enabling the Sysdig integration, allow 30 minutes before manually importing the workload. This is because of the following timing considerations related to the collection of executed packages:

The Snyk Controller collects data about executed packages once every 30 minutes.
Snyk re-scans imported Kubernetes Projects for new vulnerabilities daily.
