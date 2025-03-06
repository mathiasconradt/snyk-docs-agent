As an alternative to using the Docker run command shown on the setup page, you can build your own Docker image and override relevant environment variables:
```dockerfile
FROM snyk/broker:azure-repos
ENV BROKER_TOKEN        secret-broker-token
ENV AZURE_REPOS_TOKEN   secret-azure-token
ENV AZURE_REPOS_ORG     org-name
ENV AZURE_REPOS_HOST    your.azure-server.domain.com
ENV BROKER_CLIENT_URL   http://my.broker.client:8000
ENV PORT                8000
```
