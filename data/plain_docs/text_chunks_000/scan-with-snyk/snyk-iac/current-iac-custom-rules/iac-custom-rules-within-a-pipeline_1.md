This example shows how a security team can:

Store their rules in a GitHub repository
Use GitHub Actions to add different development-time steps to their pipelines
Configure a different GitHub repository to run a GitHub Action pipeline that uses the custom rules to gate changes.

Snyk uses the snyk/custom-rules-example repository for the example; this repo contains all the custom rules written while getting started with the SDK.
Aims: Configure our pipeline to:

Verify that new rules or changes to the existing rules do nor break existing functionality.
Publish the rules in main to an OCI registry.
Enforce the use of custom rules in other pipelines.
Optionally: Configure the custom rules using environment variables.
