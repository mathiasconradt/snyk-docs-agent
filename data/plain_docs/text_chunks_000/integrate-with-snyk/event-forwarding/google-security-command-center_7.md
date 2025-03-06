You can create an API request to delete the integration. Use the fetch the integration  API call to  obtain the integration ID, then make the following call, replacing <REGISTRATION_ID> with the ID returned from the fetch request:

```
curl --location --request DELETE 'https://api.snyk.io/rest/groups//cloud_events/group_registrations/?version=2023-01-25~experimental' \
--header 'Content-Type: application/vnd.api+json' \
--header 'Authorization: token '
```
