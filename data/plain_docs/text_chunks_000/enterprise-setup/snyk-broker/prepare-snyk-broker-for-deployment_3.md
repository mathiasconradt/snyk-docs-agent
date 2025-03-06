If you use a proxy server, ensure you configure it and any firewalls to allow the Broker Client inbound and outbound access as follows:

Outbound connection from the Broker Client running in your environment to https://broker.snyk.io (or https://broker.eu.snyk.io / https://broker.au.snyk.io) AND https://api.snyk.io (or https://api.eu.snyk.io / https://api.au.snyk.io) on port 443.
Internal connection that allows inbound access from the integration (SCM, CR) to the Broker Client at the BROKER_CLIENT_URL on the port you have configured (typically 8000). This is not inbound from the internet.

Traffic initiated from the Snyk Broker Server side always uses the latest available Broker connection. All activity from the Snyk side, such as traffic driven by recurring tests, appears on only one of your replicas at a time. The amount of Snyk activity is proportional to the activity in the repositories or Jira items. That activity generates webhooks, which are distributed across all replicas.
