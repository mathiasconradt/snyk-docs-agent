The Broker Client runs within your internal network.
Inbound connection from Snyk to the Broker Client
There is no direct inbound connection from Snyk to the Broker Client.
The Broker Client makes an outbound connection to https://broker.snyk.io. This establishes a WebSocket connection, allowing communication with the Broker Server.
Thus you do not need to allow a Snyk IP address. Instead, you can allow the Broker Client IP/port.
