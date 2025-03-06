Consider the following to understand what the required components are for your deployment:

What service are you connecting the Broker to?
GitHub, Jira, Bitbucket, Harbor, or other service
See Install and configure Snyk Broker.
Are you planning to detect Infrastructure as Code files?
You will need to add an environment variable -e ACCEPT_IAC or a custom allowlist accept.json file to your deployment.
See Snyk Broker - Infrastructure as Code detection.
Are you planning to detect Snyk Code vulnerabilities?
Grant Broker access to perform a Git clone of your repository.
To do this, add an environment variable: ACCEPT_CODE=true.
Are you planning to connect to a Container Registry?
You will need to deploy an additional agent with the Broker, the Snyk Broker Container Registry Agent.
See Snyk Broker Container Registry agent.

Every integration has a specific Broker token assigned to it. An integration to analyze Snyk Code vulnerabilities and connect to a Container Registry has the following:

One Broker for the SCM with the additional environment variable -e ACCEPT_CODE.
One Broker for the Container Registry and one Broker Container Registry agent
