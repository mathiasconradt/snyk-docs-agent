In order to validate a payload, we need to create a JS Action:
"Code by Zapier" → "Run Javascript"

We need to map headers['X-Hub-Signature'] and payload string to the snippet variables.

Following snippet will introduce a isValid: boolean variable to the Zap's fields.

Replace my-secret-string string with a webhook's secret string.

```javascript
const crypto = require('crypto');
const secret = "my-secret-string";
function makeSignature(body, secret) {
  const hmac = crypto.createHmac('sha256', secret);
  hmac.update(body, 'utf8');
return sha256=$;
}
try {
  const body = JSON.parse(inputData.body);
  const  = body;
output = { 
    isValid: inputData.signature === makeSignature(inputData.body, secret)
  };
} catch (err) {
  output = ;
}
```
Test the snippet, make sure isValid === true.
