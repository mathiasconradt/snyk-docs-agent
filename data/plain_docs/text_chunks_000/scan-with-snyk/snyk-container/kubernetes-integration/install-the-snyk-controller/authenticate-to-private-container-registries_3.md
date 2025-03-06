If you are using Nexus Repository**,** your dockercfg.json file must contain:
json
{
  "auths": {
    "<registry>": {
        "auth": "BASE64-ENCODED-AUTH-DETAILS"
    },
  }
}
