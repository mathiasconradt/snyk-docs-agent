As an alternative to using the Docker run command shown on the setup page, you can build your own Docker image and override relevant environment variables:
```dockerfile
FROM snyk/broker:jira
ENV BROKER_TOKEN        secret-broker-token
ENV JIRA_USERNAME       username
ENV JIRA_PASSWORD       password
ENV JIRA_HOSTNAME       your.jira.domain.com
ENV PORT                8000
```
