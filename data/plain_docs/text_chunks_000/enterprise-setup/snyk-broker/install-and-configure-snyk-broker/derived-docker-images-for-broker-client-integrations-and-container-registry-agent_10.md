As an alternative to using the Docker run command shown on the setup page, you can build your own Docker image and override relevant environment variables:
```dockerfile
FROM snyk/broker:container-registry-agent
ENV BROKER_TOKEN          secret-broker-token
ENV BROKER_CLIENT_URL     https://my.broker.client:8000
ENV CR_AGENT_URL          https://my.container.registry.agent
ENV CR_TYPE               container-registry-type
ENV CR_BASE               your.container.registry.domain.com
ENV CR_USERNAME           secret-container-registry-username
ENV CR_PASSWORD           secret-container-registry-password
ENV PORT                  8000
```
