The Snyk GitHub Actions examples on this page refer to a Snyk API token:
yaml
env:
  SNYK_TOKEN: $}
Every Snyk account has this token. After you have created an account with Snyk you can find the API token in one of two ways:

In the UI, go to your Snyk account settings page and retrieve the API token, as explained in Revoking and regenerating Snyk API tokens.
If you're using the Snyk CLI locally you can retrieve the API token by running snyk config get api.
