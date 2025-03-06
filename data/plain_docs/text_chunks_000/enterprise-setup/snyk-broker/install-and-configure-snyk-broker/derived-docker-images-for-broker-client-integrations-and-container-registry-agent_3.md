As an alternative to using the Docker run command shown on the setup page, you can build your own Docker image and override relevant environment variables:
```dockerfile
FROM snyk/broker:github-com
ENV BROKER_TOKEN      secret-broker-token
ENV GITHUB_TOKEN      secret-github-token
ENV PORT              8000
ENV BROKER_CLIENT_URL http://my.broker.client:8000
```
