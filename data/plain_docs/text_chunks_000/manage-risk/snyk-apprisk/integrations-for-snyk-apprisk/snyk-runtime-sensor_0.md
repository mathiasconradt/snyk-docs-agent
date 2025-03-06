Release status
The Snyk Runtime Sensor for Snyk AppRisk is in Early Access, and is available only with Snyk Enterprise plans with Snyk AppRisk. If you want to set it up in your Group, contact your Snyk account team.

The Snyk Runtime Sensor is a Kubernetes DaemonSet that watches your deployments on a Kubernetes cluster and sends the collected data to Snyk.
The following risk factors are reported from the Snyk Runtime Sensor: Deployed and Loaded package.

* The Snyk Runtime Sensor reports the Loaded package risk factor only for application packages. The following ecosystems are supported:
  * Node.js
  * Java
  * Python
  * Go
  * .NET
* Most packages are loaded into memory upon application startup, therefore they will be reported only when the Pod is initialized.

On this page, you can find the following information:

Prerequisites for Snyk Runtime Sensor
Install Snyk Runtime Sensor
As a Kubernetes DaemonSet, using a Helm chart
As a Kubernetes Deployment, using a Helm chart
Using a Helm chart and the AWS Secrets Manager
On OpenShift
Through the AWS Marketplace as an EKS add-on
Troubleshooting for Snyk Runtime Sensor
