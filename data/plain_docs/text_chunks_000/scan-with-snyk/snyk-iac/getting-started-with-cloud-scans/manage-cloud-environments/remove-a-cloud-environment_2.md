To remove an environment using the Snyk API, send a request to the Delete environment endpoint in the following format. You can find the environment ID using the method shown on the page Find an environment ID.
curl -X DELETE \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/environments/YOUR-ENVIRONMENT-ID?version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-SERVICE-ACCOUNT-TOKEN'
There is no output if the command is successful.
