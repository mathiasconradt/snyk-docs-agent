Automatic Pull Requests (PRs)
Snyk detects vulnerable base images by scanning your Dockerfile when importing a Git repository and helps you fix them using automatic pull requests. This allows you to examine security issues before you build the image and fix them before they land in your registry or in production.
Supported Git-based repository managers for Dockerfile fix PRs include:

GitHub
GitLab
Bitbucket Server
Bitbucket Cloud
GitHub Enterprise Server
Azure Repos

For any Dockerfile Project created in Snyk, if the base image is a Docker Official image, the results include a list of suitable base images that can be used instead of the existing, more vulnerable one. For more information, see Analyze and fix container images.
Snyk then automatically issues a fix pull request against your Dockerfile to upgrade to the latest minor version available.
Snyk opens an automatic fix PR when there is a change in the Dockerfile or when it identifies a better base image after the initial scan.
