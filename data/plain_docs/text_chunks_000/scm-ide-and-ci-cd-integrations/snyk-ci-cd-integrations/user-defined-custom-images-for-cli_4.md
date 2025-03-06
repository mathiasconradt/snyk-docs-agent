RUN apk add --no-cache curl
Install Node LTS
RUN apk add --no-cache nodejs
Install & setup Snyk CLI
RUN curl -o ./snyk-alpine https://downloads.snyk.io/cli/stable/snyk-alpine && \
    curl -o ./snyk-alpine.sha256 https://downloads.snyk.io/cli/stable/snyk-alpine.sha256 && \
    sha256sum -c snyk-alpine.sha256 && \
    mv snyk-alpine /usr/local/bin/snyk && \
    chmod +x /usr/local/bin/snyk
```

The base image uses Alpine to keep things lightweight. You have installed Node and the Snyk CLI; this satisfies three-quarters of the requirements.
After the Dockerfile is defined, you can build and tag the image using docker build and push the image using docker push:
```sh
