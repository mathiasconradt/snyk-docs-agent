Navigate to your Organization in the Snyk Web UI.
Select Integrations.
In the Container Registries section, select Google Artifact Registry.
In the Account credentials section, enter your Artifact Registry hostname. This is typically \-docker.pkg.dev, but in some cases, you may need to use a specific region or multi-region, for example, us-east1-docker.pkg.dev or us-docker.pkg.dev.
In the JSON key file field, paste the entire contents of the JSON key file you downloaded when enabling permissions.
Select Save.

Snyk checks the credentials, and upon success, the page reloads with a notification that the connection succeeded.
