Set the GitLab personal access token as an environment variable: export GITLAB_TOKEN=your_personal_access_token

Run the command to generate organization data:


GitLab: snyk-api-import orgs:data --source=gitlab --groupId=<snyk_group_id>

Hosted GitLab: snyk-api-import orgs:data --source=gitlab --groupId=<snyk_group_id> -- sourceUrl=https://gitlab.custom.com

This creates the organization data in a file group-<snyk_group_id>-gitlab-orgs.json
