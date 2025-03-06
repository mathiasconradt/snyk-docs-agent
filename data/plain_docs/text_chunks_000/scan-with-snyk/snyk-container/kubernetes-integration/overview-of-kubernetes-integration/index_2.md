Kubernetes integration architecture diagram
Based on the process exemplified in this diagram:

The customer's Snyk Organization is enabled for Kubernetes integration.
The customer installs the Snyk Controller into their Kubernetes cluster.
The Snyk Controller reads image information and pulls images from container registries.
The Snyk Controller scans the images.
The Snyk Controller sends scan results to the Snyk Platform to analyze issues.
The customer views the vulnerability issues on the Snyk Platform.
