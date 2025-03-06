In your Snyk account, navigate to Integrations. Under the Container Registries section, find the Quay option and click it.
In the Account credentials section, enter your Quay username and password login credentials. In the container registry name, enter the full URL to the registry you want to integrate with. This can be a cloud-based Quay or a private host. To finish, click Save.

If you are using a self-hosted Quay registry, contact Snyk Support to provide you with a token. For more information, see Snyk Container for self-hosted container registries (with Broker).

Quay.io deprecated the use of Quay login in June 2021. The credentials can no longer be Quay username and password, but must be Quay robot account credentials (username and token) that have at least 'read' permissions to the desired repository.

Snyk tests the connection values, and the page reloads, displaying Quay integration information, and the Add your Quay images to Snyk button becomes available. If the connection to Quay fails, a notification appears under the Connected to Quay section.
When the connection succeeds, you can use Snyk to scan your images from Quay.
Snyk tests and monitors your Quay container images by evaluating the tags in your repositories. After import to Snyk, your image vulnerabilities are identified and can be triaged easily.
