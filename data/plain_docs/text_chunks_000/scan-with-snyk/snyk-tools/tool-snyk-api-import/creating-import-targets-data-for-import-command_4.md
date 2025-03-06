This tool uses Bitbucket server API version 1.0.
You need the organizations data in JSON as an input to this command to help map Snyk Organization IDs and integration Ids that must be used during import against individual targets to be imported. The following format is required:
{
  "orgData": [
    {
      "name": "<project_name_in_bitbucket_server_used_to_list_repos>",
      "orgId": "<snyk_org_id>",
      "integrations": {
        "bitbucket-server": "<snyk_org_integration_id>",
      },
    },
    
  ]
}
the "name" of the Bitbucket server project is required in order to list all repos belonging to that project using the Bitbucket server API. The Snyk-specific data accompanying that project name will be used as the information to generate import data, assuming all repos in that project will be imported into a given Snyk Organization. If you want to customize the import data, create it manually as described on Kicking off an import.

Bitbucket Server Projects can be listed using the BitBucket /projects API.
You can list integrations using the Snyk API endpoint List (integrations).
You can find all Organization IDs by listing all Organizations a Group admin belongs to using the Snyk API endpoint List all organizatons in a group.

The steps to use this utility follow:

Set the Bitbucket Server personal access token as an environment variable: export BITBUCKET_SERVER_TOKEN=your_personal_access_token.
Create the organizations data in JSON as described in the opening paragraphs.
Run the command to generate import data:\
   Bitbucket Server: DEBUG=snyk* BITBUCKET_SERVER_TOKEN=*** SNYK_TOKEN=*** snyk-api-import import:data --orgsData=path/to/snyk-orgs.json --source=bitbucket-server --integrationType=bitbucket-server --sourceUrl=https://bitbucket-server.dev.example.com
Use the generated data to feed into the import command to kick off the import.
