Under some circumstances it can be desirable to create a "pool" of credentials, for example, to work around rate-limiting issues. You can do this by creating an environment variable ending in _POOL, separating each credential with a comma. The Broker Client will then, when doing variable replacement, look to see if the variable in use has a variant with a _POOL suffix, and if so, use the next item in that pool. For example, if you have set the environment variable GITHUB_TOKEN, but want to provide multiple tokens, you would do this instead:
GITHUB_TOKEN_POOL=token1, token2, token3
You can add this as env var + value in the Helm Chart.
Then the Broker Client would, any time it needed GITHUB_TOKEN, instead take an item from the GITHUB_TOKEN_POOL.
Credentials are taken in a round-robin fashion, so the first, the second, the third, and so on, until the Broker Client reaches the end and then takes the first credential again.
Calling the /systemcheck endpoint will validate all credentials, in order, and will return an array where the first item is the first credential, and so on. For example, if you were running the GitHub Client and have this:
GITHUB_TOKEN_POOL=good_token, bad_token
The /systemcheck endpoint would return the following, where the first object is for good_token and the second for bad_token:
[
  {
    "brokerClientValidationUrl": "https://api.github.com/user",
    "brokerClientValidationMethod": "GET",
    "brokerClientValidationTimeoutMs": 5000,
    "brokerClientValidationUrlStatusCode": 200,
    "ok": true,
    "maskedCredentials": "goo***ken"
  },
  {
    "brokerClientValidationUrl": "https://api.github.com/user",
    "brokerClientValidationMethod": "GET",
    "brokerClientValidationTimeoutMs": 5000,
    "ok": false,
    "error": "401 - ",
    "maskedCredentials": "bad***ken"
  }
]
The credentials are masked. However, note that if your credentials contain six (6) or fewer characters, they will be completely replaced with the mask.
