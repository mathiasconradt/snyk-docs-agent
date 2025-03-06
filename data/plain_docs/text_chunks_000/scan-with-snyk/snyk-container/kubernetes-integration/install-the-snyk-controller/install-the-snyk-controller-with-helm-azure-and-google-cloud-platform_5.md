If you are an existing customer and are updating your Snyk Controller:

Create a service account token. For more information, see Prerequisites for installing the Snyk Controller. This token is stored in the snyk-monitor secret.
Delete your existing snyk-monitor secret:

shell
kubectl delete secret snyk-monitor -n snyk-monitor

Follow the mandatory installation steps. To get the latest Helm chart version, run the following command:

helm repo add snyk-charts https://snyk.github.io/kubernetes-monitor --force-update
