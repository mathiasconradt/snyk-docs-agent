After you generate your custom rules bundle, you can distribute it to one of the supported OCI registries by following the steps in Pushing a bundle.
After successfully pushing your custom rules bundle, you can enforce the use of the bundle using any of the following:

Snyk settings
Snyk API
Environment variables

Finally, after you have enforced your custom rules using one of these options, configure the Snyk Snyk CLI with your username and password to allow Snyk to authorize a pull from your OCI registry:
snyk config set oci-registry-username=<org registry username>
snyk config set oci-registry-password=<org registry password>
This sets the following Snyk environment variables:

SNYK_CFG_OCI_REGISTRY_USERNAME
SNYK_CFG_OCI_REGISTRY_PASSWORD

After you have completed this configuration, you can run a Snyk IaC scan. The CLI will pull the bundle pushed to the configured container registry in the background.
snyk iac test <file>
The resulting configuration scan issues will include issues from both the default Snyk rules and your custom rules. See also Understanding the IaC CLI test results.

Only one method for defining the bundle's path should be defined at any given time. Make sure to disable the custom rules settings using the Snyk settings page or the Snyk API. Alternatively, clear any previously stored settings using snyk config unset.
