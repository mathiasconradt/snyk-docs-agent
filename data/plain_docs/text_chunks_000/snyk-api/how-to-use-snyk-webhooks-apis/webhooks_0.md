Webhooks are delivered with a Content-Type of application/json, with the event payload as JSON in the request body. We also send the following headers:

X-Snyk-Event - the name of the event
X-Snyk-Transport-ID - a GUID to identify this delivery
X-Snyk-Timestamp - an ISO 8601 timestamp for when the event occurred, for example: 2020-09-25T15:27:53Z
X-Hub-Signature - the HMAC hex digest of the request body, used to secure your webhooks and ensure the request did indeed come from Snyk
User-Agent - identifies the origin of the request, for example: Snyk-Webhooks/XXX

After your server is configured to receive payloads, it listens for any payload sent to the endpoint you configured. For security reasons, you should limit requests to those coming from Snyk.
While consuming a webhook event, X-Snyk-Event header must be checked, as an end-point may receive multiple event types as described.
