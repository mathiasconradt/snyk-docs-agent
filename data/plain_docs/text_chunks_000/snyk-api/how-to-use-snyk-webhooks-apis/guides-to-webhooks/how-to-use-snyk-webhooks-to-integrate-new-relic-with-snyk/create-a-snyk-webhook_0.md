Create the Snyk Webhook using the Create a webhook API.
The API requires that you provide the Snyk organization ID, the Snyk authentication token, and the target webhook URL.
An example request follows. You can use your favorite tool to send the request.
```
POST https://api.snyk.io/v1/org//webhooks HTTP/2
Host: snyk.io
Authorization: token 
Content-Type: application/json
{
    "url": "https://",
    "secret": "my-secret-string"
}
```
The response is like this:
{
  "id": "",
  "url": "https://",
}
You can then use the Ping a webhook API to pro-actively trigger the Snyk Webhook in order to test your integration:
POST https://api.snyk.io/v1/org//webhooks//ping HTTP/2
Host: snyk.io
Authorization: token 
Content-Type: application/json
When the Azure Function and Snyk Webhook are created you can use the New Relic Curated UI and Snyk Custom Dashboard.
