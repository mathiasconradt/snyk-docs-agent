After you implement all the general steps applicable to third-party integrations, you can configure the integration with unique credentials. 
The following example uses SONARQUBE_HOST_URL and SONARQUBE API_TOKEN as the values for the credentials reference. Run the following commands:
docker
docker run --restart=always \
-p 8001:8001 -e PORT=8001 \
-e BROKER_CLIENT_URL=http://broker.url.example:8000 \
-e BROKER_TOKEN=<YOUR BROKER TOKEN> \
-e UNIVERSAL_BROKER_ENABLED=true \
-e SONARQUBE_HOST_URL=<YOUR HOST URL> \
-e SONARQUBE_API_TOKEN=<YOUR API TOKEN> \
-e BROKER_SERVER_URL=https://broker.snyk.io \
-v $(pwd)/config.universal.json:/home/node/config.universal.json \
snyk/broker:universal
