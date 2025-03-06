Validating payloads
All transports sent to your webhooks have a X-Hub-Signature header, which contains the hash signature for the transport. The signature is a HMAC hexdigest of the request body, generated using sha256 and your secret as the HMAC key.
You could use a function in Node.JS such as the following to validate these signatures on incoming requests from Snyk:
```
import * as crypto from 'crypto';
function verifySignature(request, secret) {
  const hmac = crypto.createHmac('sha256', secret);
  const buffer = JSON.stringify(request.body);
  hmac.update(buffer, 'utf8');
const signature = sha256=$;
return signature === request.headers['x-hub-signature'];
}
```
