Follow these steps to install and run Snyk Broker for the Snyk AppRisk third-party integrations.

Ensure you have the Snyk Broker token for the Snyk AppRisk integration. The Snyk support team can provide the needed token. 
Generate your Broker token by following the instructions from the Obtain your Broker token for Snyk Broker page. 
Copy and paste the Broker token on the integration setup menu from the Integration Hub.
Pull the latest Broker image by running this command:

docker
docker pull snyk/broker:universal

Configure your Snyk AppRisk connection type using the snyk-broker-config command, as explained on the page Initial configuration of the Universal Broker.
