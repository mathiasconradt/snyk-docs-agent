description: How to generate the import file and use it with the snyk-api-import tool
How the import file works
This feature only works with Bitbucket and Azure.
When the snyk-scm-contributors-count tool connects both to your Snyk account and your SCM account, the tools finds out which repos/projects are monitored by Snyk and which are not.
When you apply the importConfDir and importFileRepoType flags to the command, the tool generates an import file populated with the unmonitored repo data, to be used with the snyk-api-import tool to import the missing repos to your Snyk account.

If the Snyk token was exported and the related Snyk account has an integration set for the specific SCM that is being scanned by the tool, the tool will try to find and match the OrgID and IntegrationID from Snyk as needed by the snyk-api-import tool and automatically add it to the import file.
If a Snyk token was not exported or the user has no Snyk account yet, this feature can be used to map all repos in the SCM and create the import file to be later used by the snyk-api-import tool. In this case or if the tool can not find an OrgID or IntegrationID, the tool prompts the user to supply these IDs (once) and automatically adds them to the import file.
