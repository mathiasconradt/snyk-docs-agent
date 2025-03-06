If you have only your default Organization, any Projects you add or update by running snyk test or snyk monitor are automatically associated with your default Organization.
If you have more than one Organization, you can set the Organization with which new Projects should be associated by running snyk config set org=ORG_ID.
If you want to override this global configuration for individual runs of snyk monitor, run snyk test --org=ORG_ID or snyk monitor --org=ORG_ID.

The default <ORG_ID> is the currently preferred Organization in your Account settings.
See How to select the Organization to use in the CLI for more information.
