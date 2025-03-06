How to use Snyk Broker
Snyk Broker is an open-source tool that acts as a proxy between Snyk and special integrations, providing for access by snyk.io to scan code in repositories that are not internet-reachable and return results to you. SCM integrations with Broker support Snyk Open Source, Snyk Code, Snyk Container (Dockerfile), and Snyk IaC. For details, see Integrations with Snyk Broker.
For comprehensive information about Snyk Broker, including how it works, how to deploy it, commit signing, upgrading, and troubleshooting, see the full Snyk Broker user documentation.

Broker version 4.205.1 has been released. In this version, all ACCEPT rule flags will be enabled by default. This reduces needed configuration. If you do not want a specific ACCEPT rule flag to be enabled, you can opt out of the default ACCEPT all behavior by adding ACCEPT_=false to your Broker client configuration.
