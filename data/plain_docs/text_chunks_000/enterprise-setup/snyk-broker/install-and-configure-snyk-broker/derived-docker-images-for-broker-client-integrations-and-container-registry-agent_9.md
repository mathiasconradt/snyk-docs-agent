As an alternative to using the Docker run command shown on the setup page, you can build your own Docker image and override relevant environment variables:
```dockerfile
FROM snyk/broker:nexus2
ENV BROKER_TOKEN                     secret-broker-token
ENV BASE_NEXUS_URL                   https://[:@]
ENV BROKER_CLIENT_VALIDATION_URL     https://:/systemcheck 
ENV RES_BODY_URL_SUB                 https:///nexus/content/(groups|repositories)
```

By default for Nexus 2, the X-Forwarded-For headers are stripped off by the Broker Client so Nexus returns the npm tarball uri to the Nexus Registry instead of the Broker Server. Include the environment variable REMOVE_X_FORWARDED_HEADERS=false to disable this behavior.
