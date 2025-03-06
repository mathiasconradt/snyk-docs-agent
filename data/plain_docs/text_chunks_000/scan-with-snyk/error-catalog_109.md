This limitation can lead to scan failures for customers that are pinning SDK versions in their global.json files without a rollForward directive, such as:
json
{
  "sdk": {
    "version": "6.0.101"
  }
}
Since as 6.0 is not the newest .NET channel. 
To work around this issue, we recommend that customers employ some flexibility in their global.json file by employing the rollFoward directive to be latestMajor, as such:
json
{
  "sdk": {
    "version": "6.0.101",
    "rollForward": "latestMajor"
  }
}
Which will allow Snyk to scan your code using a newer version of the SDK, despite your version pinning.
HTTP Status: 422
Help Links:
- https://versionsof.net/core/
- https://dotnet.microsoft.com/en-us/download/dotnet
- https://learn.microsoft.com/en-us/dotnet/core/tools/global-json#rollforward
