Target your desired environment with the usual -e BROKER_SERVER_URL=https://broker.REGION.snyk.io \ if needed.
| docker run --restart=always \
    -p 8000:8000 \
    -e ACCEPT_CODE=true \
    -e DEPLOYMENT_ID=<DEPLOYMENTID> \
    -e CLIENT_ID=<CLIENTID> \
    -e CLIENT_SECRET=<CLIENTSECRET> \
    -e UNIVERSAL_BROKER_ENABLED=true \
    -e PORT=8000 \
    -e BROKER_HA_MODE_ENABLED=true \
snyk/broker:universal
 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
When the command is running, you should get the following message in the output:
| 
 |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
