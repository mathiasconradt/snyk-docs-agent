As an alternative to using the Docker run command shown on the setup page, you can build your own Docker image and override relevant environment variables:
```dockerfile
FROM snyk/broker:gitlab
ENV BROKER_TOKEN        secret-broker-token
ENV GITLAB_TOKEN        secret-gitlab-token
ENV GITLAB              your.gitlab.domain.com
ENV BROKER_CLIENT_URL   http://my.broker.client:8000
ENV PORT                8000
```
