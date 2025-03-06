Each integration has an auth method set by default, with the exact method varying by service.
BitBucket Server and Data Center, for example, uses Basic Auth with a username and password in the accept.json file:
json
{
  "private": [
    {
      ...,
      "auth": {
         "scheme": "basic",
         "username": "$",
         "password": "$"
      }
    },
    ...
  ]
}
For Artifactory, the auth method is configured in the .env file by default:
```shell
