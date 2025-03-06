Webhooks can only be configured for URLs using the HTTPS protocol. HTTP is not allowed.
Request signing
When creating a webhook, you must provide a ​secret​ - this is a string that only you know that we will use to sign our transports to you so that you can ensure they come from Snyk. Your secret should be:

A random string with high entropy
Not be used for anything else
Only known to Snyk and your webhook transport consuming code

All transports sent to your webhooks will have a ​X-Hub-Signature ​header, which contains the hash signature for the transport. The signature is a HMAC hexdigest of the request body, generated using sha256 and your secret as the HMAC key.

X-Hub-Signature​ always starts with​ sha256=
