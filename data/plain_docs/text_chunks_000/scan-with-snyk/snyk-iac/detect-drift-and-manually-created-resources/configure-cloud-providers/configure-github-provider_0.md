Authentication for GitHub provider
To use iac describe, set up credentials to make authenticated requests to GitHub. Snyk retrieves configuration information from environment variables.
GitHub tokens can be created from this GitHub page.
$ GITHUB_TOKEN=14758f1afd44c09b7992073ccf00b43d \
  GITHUB_ORGANIZATION=my-org \
  snyk iac describe --to="github+tf"
