Kubernetes integration follows this process: 

Your administrator installs a controller on your cluster, authenticating the integration with a unique integration ID and a service account token with the needed permissions generated from your Snyk account. For more information, including the permissions needed, see Prerequisites for installing the Snyk Controller.
You install the controller with one of the options:
Install the Snyk Controller with Helm (Azure and Google Cloud Platform)
Install the Snyk Controller on Amazon Elastic Kubernetes Service (Amazon EKS)
Install the Snyk Controller with OpenShift and OperatorHub
The Controller communicates with the Kubernetes API to determine which workloads are running on the cluster (for example, the Deployment, ReplicationController, CronJob, and so on), find their associated images, and scan them for vulnerabilities directly on the cluster.
For each workload that your collaborators import, Snyk displays the vulnerabilities found in each image, as well as a summary of the configuration issues that have been identified with the workload.
Snyk continuously monitors your imported workloads and reports new vulnerabilities it identifies whenever they affect your Projects.
Based on your configurations, if vulnerabilities are found, Snyk notifies you through email or Slack so that you can take immediate action.


To maintain the health of the database, Snyk removes any information relating to a workload that has not been changed or updated for eight days. This can lead to failure when rescanning the workload.
If an image and its corresponding Project are removed, and you reimport the same workload during the eight days when the metadata still resides in the Snyk database, you can create the Project again.
