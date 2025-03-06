After you have validated that you are using a Snyk Image that will be removed, as outlined for users of snyk/snyk-scan < v1.0.0, refer to the Snyk images migration guidelines to view upgrade paths for your configuration.

Remember to use pinned versions where available for better stability. for example, snyk/snyk:dotnet-8.0 is preferable to snyk/snyk:dotnet

An example follows of upgrading to a supported Snyk Image.
In the example bitbucket-pipeline.yml configuration that follows, a Snyk image is configured that will be removed on 12 Aug 2024:
```yaml
