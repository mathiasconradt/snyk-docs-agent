Follow the High availability mode instructions, BUT use the following details for BROKER_DISPATCHER_BASE_URL:
SNYK-US-02: -e BROKER_DISPATCHER_BASE_URL=https://api.us.snyk.io
SNYK-EU-01: -e BROKER_DISPATCHER_BASE_URL=https://api.eu.snyk.io
SNYK-AU-01 : -e BROKER_DISPATCHER_BASE_URL=https://api.au.snyk.io
For Broker deployed by Helm chart, edit the values.yaml file to include the relevant details in brokerDispatcherUrl.
