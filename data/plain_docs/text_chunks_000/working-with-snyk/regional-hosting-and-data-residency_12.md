Use github.com/snyk/broker and add an extra environment variable in the container:
SNYK-US-01: https://broker.snyk.io (no configuration required)
SNYK-US-02: -e BROKER_SERVER_URL=https://broker.us.snyk.io
SNYK-EU-01: -e BROKER_SERVER_URL=https://broker.eu.snyk.io
SNYK-AU-01: -e BROKER_SERVER_URL=https://broker.au.snyk.io
For Broker deployed by Helm chart, use https://github.com/snyk/snyk-broker-helm and add the following variable:
SNYK-US-02: --set brokerServerUrl=https://broker.us.snyk.io
SNYK-EU-01: --set brokerServerUrl=https://broker.eu.snyk.io
SNYK-AU-01: --set brokerServerUrl=https://broker.au.snyk.io
