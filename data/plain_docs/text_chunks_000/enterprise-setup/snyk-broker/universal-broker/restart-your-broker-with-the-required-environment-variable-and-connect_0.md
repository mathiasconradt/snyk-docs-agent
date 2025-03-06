Restart your Broker with the required environment variable 
Use -e BROKER_SERVER_URL=https://broker.REGION.snyk.io \ for regional Snyk instances.
| docker run --restart=always \
    -p 8000:8000 \
    -e ACCEPT_CODE=true \
    -e DEPLOYMENT_ID=<DEPLOYMENTID> \
    -e CLIENT_ID=<CLIENTID> \
    -e CLIENT_SECRET=<CLIENTSECRET> \
    -e UNIVERSAL_BROKER_ENABLED=true \
    -e MY_GITHUB_TOKEN=GITHUB_TOKEN_VALUE \
    -e PORT=8000 \
    -e BROKER_HA_MODE_ENABLED=true \
snyk/broker:universal
 |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
At this point, the Broker will display the following message:
| 
 |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
You can now use the connection in an Organization integration.
