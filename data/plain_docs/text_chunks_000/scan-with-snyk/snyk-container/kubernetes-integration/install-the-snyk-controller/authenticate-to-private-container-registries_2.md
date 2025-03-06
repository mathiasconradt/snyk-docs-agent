For private registries other than Nexus
If your cluster does not run on GKE, or it runs on GKE and pulls images from other private registries, yourdockercfg.json file must contain:
json
{  
  "auths": {
    "gcr.io": {
      "auth": "BASE64-ENCODED-AUTH-DETAILS"
    },
    // Add other registries as necessary, for example:
    "<yourdomain>.azurecr.io": {
      "auth": "BASE64-ENCODED-AUTH-DETAILS"
    }
  }
}
