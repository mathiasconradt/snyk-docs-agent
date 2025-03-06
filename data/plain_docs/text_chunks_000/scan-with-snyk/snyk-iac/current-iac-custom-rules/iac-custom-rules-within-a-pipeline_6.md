After publishing the custom rules to an OCI registry, you can configure a separate pipeline to use these rules.
One way to do this is by using the API endpoint Update the Infrastructure as Code settings for a group.
This means configuring the GitHub Action above with another job for updating Snyk to use the configured custom rules bundle:
- name: Update Snyk
        run: |
          curl --location --request PATCH 'https://api.snyk.io/rest/groups/<group id>/settings/iac/?version=2021-11-03~beta' \
          --header 'Content-Type: application/vnd.api+json' \
          --header 'Authorization: token $}' \
          --data-raw '{
            "data": {
                  "type": "iac_settings",
                  "attributes": {
                    "custom_rules": {
                      "oci_registry_url": "registry-1.$}",
                      "oci_registry_tag": "v1",
                      "is_enabled": true
                    }
                }
            }
          }'
This API call will update the chosen Snyk Group and all the Organizations underneath it to use the configured custom rules bundle.

To configure an Organization to use a different bundle, such as the v2-beta one, use the Snyk Settings page. You can either configure a new bundle or disable custom rules to allow using environment variables in the CI/CD pipeline to run the custom rules.

In a different repository, authenticate with one of the Organizations underneath this Group and add the Snyk IaC GitHub Action to a workflow:
```
name: Snyk Infrastructure as Code Custom Rules
on:
  push:
jobs:
  snyk-iac-security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
  - name: Run Snyk to check Infrastructure as Code files for issues
    continue-on-error: false
    uses: snyk/actions/iac@master
    env:
      SNYK_TOKEN: $}

```
The result is that the GitHub action will fail until the generated misconfigurations have been resolved:
```
Testing example.tf...
Infrastructure as code issues:
  ✗ IAM Role missing one of the required tags: owner, description or type [Medium Severity] [CUSTOM-RULE-8]
    introduced by input > resource > aws_iam_role[new_role] > tags
✗ Vendor or Service must have either owneralternate or ticket group or both tags. [Medium Severity] [CUSTOM-RULE-9]
    introduced by input > resource > aws_iam_role[new_role] > tags
```
