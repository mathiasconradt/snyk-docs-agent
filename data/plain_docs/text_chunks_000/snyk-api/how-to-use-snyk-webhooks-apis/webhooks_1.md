The ping event happens after a new webhook is created, and can also be manually triggered using the ping webhook API. This is useful to test that your webhook receives data from Snyk correctly.
The ping event makes the following request:
shell
POST /webhook-handler/snyk123 HTTP/1.1
Host: my.app.com
X-Snyk-Event: ping/v0
X-Snyk-Transport-ID: 998fe884-18a0-45db-8ae0-e379eea3bc0a
X-Snyk-Timestamp: 2020-09-25T15:27:53Z
X-Hub-Signature: sha256=7d38cdd689735b008b3c702edd92eea23791c5f6
User-Agent: Snyk-Webhooks/044aadd
Content-Type: application/json
{
  "webhookId": "d3cf26b3-2d77-497b-bce2-23b33cc15362"
}
