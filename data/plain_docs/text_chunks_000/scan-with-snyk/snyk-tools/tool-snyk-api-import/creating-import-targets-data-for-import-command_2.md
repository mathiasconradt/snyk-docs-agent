You need the organization's data in JSON as an input to this command to help map Snyk Organization IDs and integration IDs that must be used during import against individual targets to be imported. The following format is required:
{
  "orgData": [
    {
      "name": "<group_name_in_gitlab_used_to_list_repos>",
      "orgId": "<snyk_org_id>",
      "integrations": {
        "gitlab": "<snyk_org_integration_id>",
      },
    },
    
  ]
}
the "name" of the GitLab Group is required in order to list all projects belonging to that group using the GitLab API. The Snyk-specific data accompanying that Group name will be used as the information to generate import data assuming all projects in that group will be imported into a given Snyk Organization. This utility is opinionated. If you want to customize the import data, create it manually as described on Kicking off an import.

GitLab Groups can be listed using the GitLab  /groups API
You can list integrations using the Snyk API endpoint List (integrations).
You can find all Organization IDs by listing all Organizations a Group admin belongs to using the Snyk API endpoint List all organizatons in a group.

The steps to use this utility follow:

Set the GitLab personal access token as an environment variable: export GITLAB_TOKEN=your_personal_access_token.
Create the organizations data in JSON as described in the opening paragraphs.
Run the command to generate import data:\
   Gitlab.com: DEBUG=snyk* GITLAB_TOKEN=*** SNYK_TOKEN=*** snyk-api-import import:data --orgsData=path/to/snyk-orgs.json --source=gitlab --integrationType=gitlab\
   Hosted Gitlab: DEBUG=snyk* GITLAB_TOKEN=*** SNYK_TOKEN=*** snyk-api-import import:data --orgsData=path/to/snyk-orgs.json --source=gitlab --integrationType=gitlab --sourceUrl=https://gitlab.custom.com
Use the generated data to feed into the import command to kick off the import.
