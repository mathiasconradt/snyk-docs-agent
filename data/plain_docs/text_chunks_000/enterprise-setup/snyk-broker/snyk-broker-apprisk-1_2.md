After you implement all the general steps applicable to third-party integrations, you can configure the integration with unique credentials. 
The following example has CHECKMARX_PASSWORD as the value for the credentials reference. Run the following commands with your password:
docker
docker run --restart=always \
        -p 8001:8001 -e PORT=8001 \
        -e BROKER_CLIENT_URL=http://broker.url.example:8000 \
        -e BROKER_TOKEN=<YOUR BROKER TOKEN> \
        -e UNIVERSAL_BROKER_ENABLED=true \
        -e CHECKMARX_PASSWORD=<YOUR CHECKMARX PASSWORD> \
        -e BROKER_SERVER_URL=https://broker.snyk.io \
        -v $(pwd)/config.universal.json:/home/node/config.universal.json \
    snyk/broker:universal
