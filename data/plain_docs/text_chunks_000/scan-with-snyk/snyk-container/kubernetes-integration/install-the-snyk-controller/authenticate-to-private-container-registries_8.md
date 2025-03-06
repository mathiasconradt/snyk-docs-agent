If your cluster runs on AKS and you're using ACR, add the following:
json
{
  "credHelpers": { 
    "myregistry.azurecr.io": "acr-env"
  }
}

In addition, for clusters running on AKS and using ACR, see Entra ID Workload Identity service account. It is possible that you are required to configure labels and annotations on the snyk-monitor ServiceAccount.

You can configure different credential helpers for different registries.
