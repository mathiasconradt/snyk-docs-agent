If manually updating the settings through the Snyk Settings page is too time-consuming, you can use the Snyk API, which allows you to send any variation of the custom rules settings using an API call.

For example, in order to configure the custom rules bundle at the Group level, use the endpoint Update the Infrastructure as Code settings for a group by providing the following body:

{
   "data": {
         "type": "iac_settings",
         "attributes": {
           "custom_rules": {
             "oci_registry_url": "registry-1.docker.io/group-account/group-bundle-image",
             "oci_registry_tag": "1.3.14",
             "is_enabled": true
           }
       }
   }
}

If you want to update the tag only, you can send over a simpler body:

{
   "data": {
         "type": "iac_settings",
         "attributes": {
           "custom_rules": {
             "oci_registry_tag": "1.3.14"
           }
       }
   }
}

If you want to disable custom rules, you can send over the is_enabled flag:

{
   "data": {
         "type": "iac_settings",
         "attributes": {
           "custom_rules": {
             "is_enabled": false
           }
       }
   }
}
The API replies with the Group settings so you can confirm the changes:
{
  "type": "iac_settings",
  "id": "<group id>",
  "attributes": {
    "custom_rules": {
      "oci_registry_url": "registry-1.docker.io/group-account/group-bundle-image",
      "oci_registry_tag": "1.3.14",
      "is_enabled": true
    },
   "updated": "2021-11-27T11:34:33.132Z"
  }
You can override remote bundle configurations using the Snyk API.
Similarly to the Settings page, the endpoint Update the Infrastructure as Code settings for a group allows you to apply the remote bundle to all the Organizations in the Group. An Organization can override the configurations for a Group and define its own bundle and tag by using an API call.

To override the Group configurations, call the endpoint Update the Infrastructure as Code settings for an org by providing a different custom rules bundle and tag in the request body:

{
   "data": {
         "type": "iac_settings",
         "attributes": {
           "custom_rules": {
             "oci_registry_url": "registry-1.docker.io/org-account/org-bundle-imageage",
             "oci_registry_tag": "1.3.15",
             "is_enabled": true
           }
       }
   }
}

The API replies with the Organization settings and the Group settings under the parents section so that you can compare the two:

{
  "type": "iac_settings",
  "id": "<org id>",
  "attributes": {
    "custom_rules": {
      "oci_registry_url": "registry-1.docker.io/org-account/org-bundle-image",
      "oci_registry_tag": "1.3.15",
      "is_enabled": true
    },
   "updated": "2021-11-27T11:34:33.132Z",
   "parents": {
      "group": {
        "id": "<group id>",
        "type": "iac_settings",
        "attributes": {
          "custom_rules": {
            "oci_registry_url": "registry-1.docker.io/group-account/group-bundle-image",
            "oci_registry_tag": "1.3.14",
            "is_enabled": true
          },
          "updated": "2021-11-19T10:59:45.259Z"
        }
      }
    }
  }

To revert to the Group settings, call the API by providing the following request body:

{
   "data": {
         "type": "iac_settings",
         "attributes": {
           "custom_rules": {
             "inherit_from_parent": "group"
           }
       }
   }
}

The API replies with the Organization settings and the Group settings under the parents section so that you can compare the two:

{
  "type": "iac_settings",
  "id": "<org id>",
  "attributes": {
    "custom_rules": {
      "oci_registry_url": "registry-1.docker.io/group-account/group-bundle-image",
      "oci_registry_tag": "1.3.14",
      "is_enabled": true,
      "inherit_from_parent": "group"
    },
   "updated": "2021-11-19T10:59:45.259Z",
   "parents"  {
      "group": {
        "id": "<group id>",
        "type": "iac_settings",
        "attributes": {
          "custom_rules": {
            "oci_registry_url": "registry-1.docker.io/group-account/group-bundle-image",
            "oci_registry_tag": "1.3.14",
            "is_enabled": true
          },
          "updated": "2021-11-19T10:59:45.259Z"
        }
      }
    }
  }
