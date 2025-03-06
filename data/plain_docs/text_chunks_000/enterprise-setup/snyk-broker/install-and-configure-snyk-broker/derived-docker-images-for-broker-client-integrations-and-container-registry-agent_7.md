As an alternative to using the Docker run command shown on the setup page, you can build your own Docker image and override relevant environment variables:
```dockerfile
FROM snyk/broker:artifactory
ENV BROKER_TOKEN      secret-broker-token
ENV ARTIFACTORY_URL   .artifactory.com
```
