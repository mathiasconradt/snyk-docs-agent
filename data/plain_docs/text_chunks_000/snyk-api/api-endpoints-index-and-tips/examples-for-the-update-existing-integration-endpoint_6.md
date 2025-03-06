curl --include \
     --request PUT \
     --header "Content-Type: application/json; charset=utf-8" \
     --header "Authorization: token API_KEY" \
     --data-binary "{
    \"type\": \"gitlab\",
    \"credentials\": 
}" \
'https://api.snyk.io/v1/org//integrations/'
