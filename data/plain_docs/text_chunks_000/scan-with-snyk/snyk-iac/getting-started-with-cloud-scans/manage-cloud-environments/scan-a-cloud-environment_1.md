If you have jq installed, you can execute a single command to retrieve the first environment ID from the Snyk API Create scan endpoint to trigger the scan manually and then manually scan the environment:
SNYK_ORG_ID="YOUR-ORGANIZATION-ID" && \
SNYK_API_TOKEN="YOUR-API-TOKEN" && \
SNYK_ENV_ID=$(curl -s -X GET \
  "https://api.snyk.io/rest/orgs/$/cloud/environments?version=2022-12-21~beta&kind=aws,azure,google" \
  -H "Authorization: token $" | jq -r '.data[0].id') && \
curl -X POST \
"https://api.snyk.io/rest/orgs/$/cloud/scans?version=2022-12-21~beta" \
-H "Authorization: token $" \
-H "Content-Type:application/vnd.api+json"  -d "{
  \"data\": {
    \"relationships\": {
      \"environment\": {
        \"data\": {
          \"id\": \"$\",
          \"type\": \"environment\"
        }
      }
    },
    \"type\": \"resource\"
  }
}"

Because jq -r '.data[0].id returns the ID of the first environment shown in the Snyk API List environments output, this technique is especially useful if your Organization has a single environment. You can also change the 0 to another number to scan a different environment; for example, jq -r '.data[1].id will return the ID of the second environment in the output.
