When you set up Broker for an environment (region) other than the system default, before you can authenticate, you must set environment variables with specific Broker URLs.\
Example: -e BROKER_SERVER_URL=https://broker.eu.snyk.io
For details, see Regional hosting and data residency.
The following are prerequisites for using Snyk Broker in any environment:

Client machine system requirements: one CPU, 256MB of RAM
Network access: an outbound TLS (443) to https://broker.snyk.io AND https://api.snyk.io (or regional equivalent) that is also allowed by any firewalls installed on your network
A Snyk account
Self-enabled Broker integration using the Snyk API or enabled by contacting Snyk Support
A unique UUID token called a Broker token. See Generate credentials in the target application for Snyk Broker.
An SCM token or password. See the integrations documentation for each SCM for information on how to obtain the token. Snyk Broker does not support authentication with the mTLS method.
Docker configured to pull images from Docker Hub to install with Docker.
