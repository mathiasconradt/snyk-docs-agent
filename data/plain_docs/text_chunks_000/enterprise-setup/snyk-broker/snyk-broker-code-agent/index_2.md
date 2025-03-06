You have installed a Broker client.
The maximum file size you can import using the Code Agent deployment method is 1MB. For more information, see File size limit for Snyk Code analysis.
You must have the ability to run a Docker Container, for example, by using a Docker Desktop or Kubernetes.

Multi-tenant settings for EU and AU\
When you set up Broker, Code Agent, or both for use in EU or AU Multi-tenant environments, additional environment variables with the specific URLs are required.\
Example: -e BROKER_SERVER_URL=https://broker.eu.snyk.io\
For the URLs, see Regional hosting and data residency.

You cannot deploy the Code Agent as a part of a Broker redundancy solution.
The minimum requirements for running the Code Agent component are:

CPU - 1 vCPU
Memory - 2Gb
Disk space - 2Gb\
  The available disk space determines the maximum size of repositories that are imported simultaneously. To import repositories that exceed this size, you must increase the available disk space. However, it is highly recommended to consult with your Snyk team before importing repositories that are larger than 2Gb.
Network:
SCM connection - HTTPS communication to the SCM that stores the repositories you want to analyze. Support for HTTP-only SCM-deployments can be resolved by deploying a reverse proxy between the Code Agent and the SCM.
If you are using the same Broker Client for other Snyk products, and you want to enable Automatic PR Checks on that Client, you must also configure the following:\
    An internal connection that allows inbound access from the integration (SCM) to the Broker Client at the BROKER_CLIENT_URL on the port you have configured (typically 8000). This is not inbound from the internet. See Running the Broker Client.
Snyk Code Analysis Engine connection - outbound communication to the Code Analysis Engine at https://deeproxy.snyk.io/.
Internet bandwidth and connection - the upload speed of the source code to the Broker Server will be affected by low bandwidth and a slow Internet connection.
Snyk API token - your Snyk API token is required to authenticate the Code Agent component with your Snyk Account. For more information see Obtaining your Snyk API token.
