Export SNYK_TOKEN (if you want to get the contributors only for repos that are already monitored by Snyk):
Make sure that your token has Group level access or use a service account's token that has Group level access. To learn more about how to create a service account, refer to How to set up a service account.
Copy the token value.

Export the token in your environment:
export SNYK_TOKEN=<YOUR-SNYK-TOKEN>
2. Get your Azure Devops Token and Org:
   *   Create a Token if one does not exist, using this guide.
Make sure your token has read access to the repos.
   * Find your Org name in Azure listed on the left pane on the Azure DevOps site.
