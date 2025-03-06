If not using basic auth this will only be "/artifactory"
ARTIFACTORY_URL=:@/artifactory
```
For GitHub, the auth meth is part of the origin field in the accept.json file:
json
{
  "private": [
    {
      ...,
      "origin": "https://$@$"
    },
    ...
  ]
}
You can override the authentication method. Valid values for scheme are bearer, token, and basic, which set the Authorization header to Bearer, Token, and Basic respectively. If a bearer token is preferred, the accept.json file can be configured as such:
json
{
  "private": [
    {
      ...,
      "auth": {
        "scheme": "bearer",
        "token": "$"
      }
    },
    ...
  ]
}
Note that you must set this for every individual object in the private array.
If scheme is bearer or token, you must provide a token, and if scheme is basic, you must provide a username and password.
This overrides any other configured authentication method, for example, setting the token in the origin field, or in the .env file.

Snyk Broker does not support authentication with mTLS method.
