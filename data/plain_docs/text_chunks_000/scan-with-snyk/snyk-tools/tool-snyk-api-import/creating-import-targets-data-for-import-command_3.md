This tool uses Azure API v1.
You need the organizations data in JSON as an input to this command to help map Snyk Organization IDs and integration Ids that must be used during import against individual targets to be imported. The following format is required:
{
  "orgData": [
    {
      "name": "<org_name_in_azure_used_to_list_repos>",
      "orgId": "<snyk_org_id>",
      "integrations": {
        "azure-repos": "<snyk_org_integration_id>",
      },
    },
    
  ]
}
the "name" of the Azure organization is required in order to list all projects and repos belonging to that organization using the Azure API. The Snyk-specific data accompanying that organization name will be used as the information to generate import data assuming all projects in that organization will be imported into a given Snyk Organization. This utility is opinionated. If you want to customize the import data, create it manually as described on Kicking off an import.

Your Org name in Azure is listed on the left pane in the Azure-Devops-site
You can list integrations using the Snyk API endpoint List (integrations).
You can find all Organization IDs by listing all Organizations a Group admin belongs to using the Snyk API endpoint List all organizatons in a group.

The steps to use this utility follow:

Set the Azure personal access token as an environment variable: export AZURE_TOKEN=your_personal_access_token.
Create the organizations data in JSON as described in the opening paragraphs.
Run the command to generate import data:\
   dev.azure.com: DEBUG=snyk* AZURE_TOKEN=*** SNYK_TOKEN=*** snyk-api-import import:data --orgsData=path/to/snyk-orgs.json --source=azure-repos --integrationType=azure-repos\
   `Hosted Azure: DEBUG=snyk* AZURE_TOKEN=*** SNYK_TOKEN=*** snyk-api-import import:data --orgsData=path/to/snyk-orgs.json --source=azure-repos --integrationType=azure-repos --sourceUrl=https://azure.custom.com
Use the generated data to feed into the import command to kick off the import.
