Specify HTTPS authentication to use a Terraform state stored on GitLab:
GITLAB_TOKEN=<access_token> \
  snyk iac describe \
  --from="tfstate+https://gitlab.com/api/v4/projects/<project_id>/terraform/state/<path_to_state>" \
 --fetch-tfstate-headers='Authorization="Bearer $"'
