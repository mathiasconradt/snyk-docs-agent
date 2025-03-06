Export SNYK_TOKEN (if you want to get the contributors ONLY for repos that are already monitored by Snyk):
Make sure that your token has Group level access or use a service account's token that has Group level access. To learn more on how to create a service account, refer to How to set up a service account.
Copy the token value.

Export the token in your environment:
export SNYK_TOKEN=<YOUR-SNYK-TOKEN>
2. Get your Bitbucket Server token and URL:
   *   Create a Token if one does not exist, using this guide.
Make sure your token has read access to the repos.
   * The URL is the actual URL of your Bitbucket Server instance, for example http://bitbucket-server.mycompany.com.
