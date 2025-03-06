If you already have multiple Snyk Organizations with Projects imported using the GitHub integration, follow these steps to migrate from GitHub integration to GitHub Enterprise integration.

Create a new Snyk Organization that will be used as the template for all others. You can copy integration settings from an existing Organization if required.
In this new template Organization, set up the Snyk GitHub Enterprise integration using the steps on the page GitHub Enterprise integration. The dedicated GitHub service account in those steps is a separate user account that you will use as the connection between Snyk and GitHub.
When the Snyk GitHub Enterprise integration is configured, you can import a Project to your template Organization to test that the integration is working as expected.
You can now create new Organizations that will replace the existing Organizations that were configured using the GitHub integration. As you create each new Organization, ensure that you copy the integration settings from this template Organization so that the GitHub Enterprise integration is available.
Now that your new Organizations are created, you can import your Projects, choosing the GitHub Enterprise integration when you select the source.
You can now remove the previous Organizations that were configured using the GitHub integration.

You may want to disconnect your GitHub integration to avoid unintentionally importing Projects using the GitHub integration in the future. Because the GitHub integration is configured per user account, rather than per Organization, each user who has set up the GitHub integration must complete this disconnection process individually.
