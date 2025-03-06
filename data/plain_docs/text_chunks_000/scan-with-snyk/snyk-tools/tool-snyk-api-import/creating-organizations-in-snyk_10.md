Set the SNYK_TOKEN environment variable, your Snyk API token.
Run the command to create Organizations: snyk-api-import orgs:create --noDuplicateNames --includeExistingOrgsInOutput --file=group-<snyk_group_id>-github-<com|enterprise>-orgs.json.
Use the noDuplicateNames flag (optional) to skip creating an Organization if the given name is already taken within the Group.
Use the includeExistingOrgsInOutput flag (optional, default is true) to log information for existing Organizations as well as newly created Organizations. To set this flag as false, use --no-includeExistingOrgsInOutput in the command as follows: snyk-api-import orgs:create --no-includeExistingOrgsInOutput --file=group-<snyk_group_id>-github-<com|enterprise>-orgs.json

The file format required for this command is as follows:
"orgs": [
  {
    "groupId": "<public_snyk_group_id>",
    "name": "<name_of_the_organization>",
    "sourceOrgId": "<public_snyk_organization_id>"
  }
]

groupId - public id of the Snyk Group where the Organization is to be created
name - name to use when creating the Organization
sourceOrgId - optional public id of a Snyk Organization to copy settings from
