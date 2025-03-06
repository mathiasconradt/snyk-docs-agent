To fetch an existing SCC integration, make the following API request. Replace the placeholders with actual values. 

```
curl --location 'https://api.snyk.io/rest/groups//cloud_events/group_registrations?version=2023-01-25~experimental' \
--header 'Authorization: token ' \
--header 'Content-Type: application/vnd.api+json'
```

This will return a list of integration registrations, including the SCC integration created earlier.
