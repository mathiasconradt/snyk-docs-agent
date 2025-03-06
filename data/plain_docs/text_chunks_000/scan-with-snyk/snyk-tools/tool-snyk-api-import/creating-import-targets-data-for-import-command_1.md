You need the organizations data in JSON as an input to this command to help map Snyk Organization IDs and integration Ids that must be used during import against individual Targets to be imported. The following format is required:
{
  "orgData": [
    {
      "name": "<org_name_in_gh_used_to_list_repos>",
      "orgId": "<snyk_org_id>",
      "integrations": {
        "github": "<snyk_org_integration_id>",
        "github-enterprise": "<snyk_org_integration_id>
      },
    },
    
  ]
}
the "name" of the GitHub or GitHub Enterprise organization is required in order to list all repos belonging to that organization using the GitHub API. The Snyk-specific data accompanying that organization name will be used as the information to generate import data, assuming all repos in that organization will be imported into a given Snyk Organization. This utility is opinionated. If you want to customize the import data, create it manually as described on Kicking off an import.

You can list GitHub and GitHub Enterprise organizations using the GitHub /orgs API.
You can list integrations using the Snyk API endpoint List (integrations).
You can find all Organization IDs by listing all Organizations a Group admin belongs to using the Snyk API endpoint List all organizatons in a group.

The steps to use this utility follow:

Set the GitHub.com personal access token as an environment variable: export GITHUB_TOKEN=your_personal_access_token.
Create the organization's data in JSON as described in the opening paragraphs.
Run the command to generate import data:\
   GitHub.com: DEBUG=snyk* GITHUB_TOKEN=*** SNYK_TOKEN=*** snyk-api-import import:data --orgsData=path/to/snyk-orgs.json --source=github --integrationType=github\
   `GitHub Enterprise: DEBUG=snyk* GITHUB_TOKEN=*** SNYK_TOKEN=*** snyk-api-import import:data --orgsData=path/to/snyk-orgs.json --source=github-enterprise --integrationType=github-enterprise --sourceUrl=https://ghe.custom.com
Use the generated data to feed into the import command to kick off the import.
