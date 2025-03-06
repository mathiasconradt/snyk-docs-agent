Note that this tool uses Bitbucket Cloud API version 2.0.
You need the organizations data in JSON as an input to this command to help map Snyk Organization IDs and integration Ids that must be used during import against individual targets to be imported. The following format is required:
{
  "orgData": [
    {
      "name": "<workspace_name_in_bitbucket_cloud_used_to_list_repos>",
      "orgId": "<snyk_org_id>",
      "integrations": {
        "bitbucket-cloud": "<snyk_org_integration_id>",
      },
    },
    
  ]
}
the "name" of the Bitbucket Cloud workspace is required in order to list all repositories belonging to that workspace using the Bitbucket Cloud API. The Snyk-specific data accompanying that workspace name will be used as the information to generate import data assuming all repositories in that workspace will be imported into a given Snyk Organization. This utility is opinionated. If you want to customize the import data, create it manually as described on Kicking off an import.

Bitbucket Cloud workspaces can be listed using the BItBucket /workspaces API.
You can list integrations using the Snyk API endpoint List (integrations).
You can find all Organization IDs by listing all Organizations a Group admin belongs to using the Snyk API endpoint List all organizatons in a group.

The steps to use this utility follow:

Set the username and password credentials for your Bitbucket Cloud as environment variables:\
   export BITBUCKET_CLOUD_USERNAME=your_bitbucket_cloud_username\
   export BITBUCKET_CLOUD_PASSWORD=your_bitbucket_cloud_password
Create the organizations data in JSON as described in the opening paragraphs.
Run the command to generate import data:\
   Bitbucket Cloud: DEBUG=snyk* BITBUCKET_CLOUD_USERNAME=*** BITBUCKET_CLOUD_PASSWORD=*** SNYK_TOKEN=*** snyk-api-import import:data --orgsData=path/to/snyk-orgs.json --source=bitbucket-cloud --integrationType=bitbucket-cloud
Use the generated data to feed into the import command to kick off the import.
