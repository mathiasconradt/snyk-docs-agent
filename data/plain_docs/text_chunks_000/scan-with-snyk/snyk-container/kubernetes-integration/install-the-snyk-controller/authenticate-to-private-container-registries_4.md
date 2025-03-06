If you are using Artifactory Container Registry to host multiple private repositories**,** your dockercfg.json file must contain:
json
{
  "auths": {
    "<registry1>": {
        "auth": "BASE64-ENCODED-AUTH-DETAILS"
       },
    "<registry2>": {
       "auth": "BASE64-ENCODED-AUTH-DETAILS"
    }
  }
}
