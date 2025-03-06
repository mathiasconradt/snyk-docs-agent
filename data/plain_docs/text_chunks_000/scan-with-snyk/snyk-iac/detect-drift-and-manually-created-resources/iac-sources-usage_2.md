The HTTP backend supports the GitLab-managed Terraform state using the GitLab API.
You need a GitLab repository that contains a Terraform state and an access token with the read_api scope.
Use the following command:
$ GITLAB_TOKEN=<access_token> \
snyk iac describe \
--from="tfstate+https://gitlab.com/api/v4/projects/<project_id>/terraform/state/<path_to_state>" \
--headers "Authorization=Bearer $"
For more information about the GitLab-managed Terraform State, see GitLab-managed Terraform state on the GitLab documentation website.
