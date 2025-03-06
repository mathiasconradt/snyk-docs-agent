If you want to release an experimental version of the custom rules without affecting all our CI/CD pipelines, use tagging to version the bundles.
Start trialing bundle v2-beta while still using v1 in most of our services:

- name: Publish experimental rules
        run: snyk-iac-rules push --registry $OCI_REGISTRY_URL bundle.tar.gz
        env:
          OCI_REGISTRY_URL: "$}:v1"
      - name: Publish rules
        run: snyk-iac-rules push --registry $OCI_REGISTRY_URL bundle.tar.gz
        env:
          OCI_REGISTRY_URL: "$}:v2-beta"


Ensure that the OCI_REGISTRY_NAME configured in the GitHub Secrets does not already contain the tag or the protocol if you want to use this workflow.
