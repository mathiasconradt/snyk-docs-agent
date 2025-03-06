In your Snyk account, navigate to Integrations, and under the Container Registries section, select the Harbor option.
In the Account credentials section, enter your Harbor username and password login credentials.
In the Container registry name fill in the full URL to the registry you want to integrate with.
To finish, select Save.

If you are using a self-hosted Harbor registry, contact Snyk to provide you with a token. For more information, see Snyk Container for self-hosted container registries (with Broker).

To set up the integration, the Harbor user should be an admin user. The integration uses /v2/_catalog endpoint for listing repositories.

Harbor Account credentials with Broker token
Snyk tests the connection values, and the page reloads, now displaying Harbor integration information. The Add your Harbor images to Snyk button becomes available. If the connection to Harbor fails, a notification appears under the Connected to Harbor section.
Once the connection is successful, you can use Snyk to scan your images from Harbor.
