Target your desired environment with the usual -e BROKER_SERVER_URL=https://broker, REGION.snyk.io \ if you are not using broker.snyk.io.
Add the environment variable or variables as defined in the credentials references with the associated value. The connection will not be established if references are missing, and an error entry will be logged in the Broker Client logs.
| docker run --restart=always \
    -p 8000:8000 \
    -e ACCEPT_CODE=true \
    -e DEPLOYMENT_ID=<DEPLOYMENTID> \
    -e CLIENT_ID=<CLIENTID> \
    -e CLIENT_SECRET=<CLIENTSECRET> \
    -e UNIVERSAL_BROKER_ENABLED=true \
    -e PORT=8000 \
    -e BROKER_HA_MODE_ENABLED=true \
    -e <YOUR_CREDENTIALS_REFERENCE>=<secret value> \
snyk/broker:universal
 |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
