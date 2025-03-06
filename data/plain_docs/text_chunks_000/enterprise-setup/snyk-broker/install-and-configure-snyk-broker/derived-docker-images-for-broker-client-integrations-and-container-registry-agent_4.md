As an alternative to using the Docker run command shown on the setup page, you can build you own Docker image and override relevant environment variables:
```dockerfile
FROM snyk/broker:github-enterprise
ENV BROKER_TOKEN      secret-broker-token
ENV GITHUB_TOKEN      secret-github-token
ENV GITHUB            your.ghe.domain.com
ENV GITHUB_API        your.ghe.domain.com/api/v3
ENV GITHUB_GRAPHQL    your.ghe.domain.com/api
ENV PORT              8000
ENV BROKER_CLIENT_URL http://my.broker.client:8000
```
