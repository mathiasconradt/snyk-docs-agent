What is the difference between the Kubernetes monitor (also called Snyk Controller or Snyk-Monitor), the Kubernetes connector for Snyk AppRisk and the Snyk Runtime Sensor?

The Kubernetes monitor extracts images from a Kubernetes cluster’s workloads and scans them for vulnerabilities. The Kubernetes monitor reports the Deployed risk factor.
The Kubernetes connector for Snyk AppRisk extracts workload configurations from a Kubernetes cluster. The Kubernetes connector reports the Public facing and Deployed risk factors.
The Snyk Runtime Sensor watches your deployments on a Kubernetes cluster and sends the collected data to Snyk. The Snyk Runtime Sensor reports the Deployed and Loaded package risk factors.


Risk factors are available only based on the integration option you implemented.
