The Snyk GitLab integration uses either a personal access token (PAT) or group access token (GAT), depending on the GitLab account tier you are on.
To set up the Snyk GitLab integration you must be a:

Snyk Group or Organization Admin.
GitLab Owner or Maintainer

A PAT is used for managing personal GitLab projects and requires the api scope. For Snyk Essentials to show all repositories from GitLab, the user generating the PAT should be part of the GitLab group where their GitLab permissions can be a minimum of Guest.
A GAT is used for managing multiple GitLab projects in a GitLab group and requires the api scope and maintainer role selected from the dropdown. You must be a GitLab Premium or Ultimate account tier holder to create a GAT.
