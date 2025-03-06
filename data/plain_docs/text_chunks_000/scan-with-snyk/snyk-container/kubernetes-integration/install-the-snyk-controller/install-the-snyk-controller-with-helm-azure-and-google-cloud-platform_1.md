To install the Snyk Controller with Helm:

Access your Kubernetes environment. Run the following command to add the Snyk Charts repository to Helm:

helm repo add snyk-charts https://snyk.github.io/kubernetes-monitor --force-update


After the repository is added, create a unique namespace for the Snyk Controller:

kubectl create namespace snyk-monitor

As a good practice for Kubernetes applications, use a unique namespace to isolate the controller resources easily. 
Ensure you remember the namespace snyk-monitor. You will use it when configuring other resources.

Snyk monitor requires:

Snyk Integration ID
Service Account Token
dockercfg.json file.
