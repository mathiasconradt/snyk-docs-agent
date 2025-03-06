Set the GitHub.com personal access token as an environment variable: export GITHUB_TOKEN=your_personal_access_token

Run the command to generate organization data:


GitHub.com: snyk-api-import orgs:data --source=github --groupId=<snyk_group_id>

GitHub Enterprise: snyk-api-import orgs:data --source=github-enterprise --groupId=<snyk_group_id> -- sourceUrl=https://ghe.custom.github.com/

This creates the organization data in a file group-<snyk_group_id>-github-<com|enterprise>-orgs.json
