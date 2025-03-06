Ensure you have reviewed the prerequisites for installing the Snyk Controller.


The installation steps work best for EKS and ECR with the same AWS account. If you have a different setup, contact Snyk support.

Installing the Snyk Controller enables you to import and test your running EKS workloads and identify vulnerabilities in their associated images and configurations that can make the workloads less secure. After the workload is imported, Snyk continues to monitor the workload, identifying additional security issues, as new images are deployed and the workload configuration changes.
The steps described below provide instructions for configuring the Snyk Controller to pull and scan private images from ECR.
To install Amazon EKS:
1. Access your Kubernetes environment. Run the following command in order to add the Snyk Charts repository to Helm:
helm repo add snyk-charts https://snyk.github.io/kubernetes-monitor --force-update
2. After the repository is added, create a unique namespace for the Snyk Controller:
kubectl create namespace snyk-monitor

As a good practice for Kubernetes applications, use a unique namespace to isolate the controller resources easily.
Ensure you remember the namespace snyk-monitor. You will use it when configuring other resources.

3. Create a file named dockercfg.json and ensure it matches the following example:
{
  "credsStore": "ecr-login"
}
For additional setup for private registries, see Authenticate to private container registries.
4. Create a Kubernetes secret containing your Integration ID, service account token, and dockercfg.json file:
kubectl create secret generic snyk-monitor \
        -n snyk-monitor --from-file=dockercfg.json \
        --from-literal=integrationId=abcd1234-abcd-1234-abcd-1234abcd1234 \
        --from-literal=serviceAccountApiToken=bdca4123-dbca-4343-bbaa-1313cbad4231
5. Attach policies or roles for nodes. You can do this using one of the below options:
