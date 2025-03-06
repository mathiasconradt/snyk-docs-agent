If you wish, see if the scan is finished by sending another API request in the format that follows to get environment details. You can find the environment ID in the data.id field of the JSON output when you create the environment.
curl -X GET \
  'https://api.snyk.io/rest/orgs/YOUR-ORGANIZATION-ID/cloud/environments?id=YOUR-ENVIRONMENT-ID&version=2022-12-21~beta' \
  -H 'Authorization: token YOUR-API-TOKEN'
If the data.attributes.status field in the JSON output is set to success, Snyk has finished scanning your environment.
To re-scan an environment, see Scan a Cloud Environment.
