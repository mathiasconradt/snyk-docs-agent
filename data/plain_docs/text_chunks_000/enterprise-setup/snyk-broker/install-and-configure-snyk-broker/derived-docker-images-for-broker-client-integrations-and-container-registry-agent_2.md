As an alternative to using the Docker run command shown on the setup page, you can build your own Docker image and override relevant environment variables:
```dockerfile
FROM snyk/broker:bitbucket-server
ENV BROKER_TOKEN        secret-broker-token
ENV BITBUCKET_USERNAME  username
ENV BITBUCKET_PASSWORD  password
ENV BITBUCKET           your.bitbucket-server.domain.com
ENV BITBUCKET_API       your.bitbucket-server.domain.com/rest/api/1.0
ENV PORT                8000
```
