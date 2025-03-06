First of all, we need to create a new Zap in Zapier.
Trigger
In order to have an access to request headers, we need to create "Catch Raw Hook" trigger. It comes with a disadvantage that request payload will be provided as a string and we will need to parse it to the JSON.

It will provide us a Webhook url, were we can send requests:

Now we need to create a Webhook in Snyk via API with provided url.
```
POST /api/v1/org//webhooks HTTP/2

Host: snyk.io
Authorization: token 
Content-Type: application/json
| {
|   "url": "https://hooks.zapier.com/hooks/catch/9002958/oemlgkz/",
|   "secret": "my-secret-string"
| }
```

The API will respond with a nearly created Webhook.
< HTTP/2 200 
< Content-Type: application/json
| {
|   "id": "",
|   "url": "https://hooks.zapier.com/hooks/catch/9002958/oemlgkz/",
| }
Now we are able to ping a webhook, in order to test a Zapier's trigger.
```

POST /api/v1/org//webhooks//ping HTTP/2
Host: snyk.io
Authorization: token 
Content-Type: application/json
```

Now we will be able to select a ping request from the list, and map fields.
