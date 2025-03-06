Deprecated
The Code Agent is deprecated and is no longer maintained.
The preferred method of running Snyk Code analysis using Snyk Broker is through Brokered Code. The Code Agent is an alternative method without advantages. For details, contact your Snyk Integration Consultant or Technical Success Manager or contact Snyk Support.
The automatic PR Checks feature is not supported for Snyk Broker - Code Agent.

Follow the Snyk Broker - Code Agent instructions BUT add an extra environment variable in the Code Agent container:
SNYK-US-02 :-e UPSTREAM_URL=https://deeproxy.us.snyk.io
SNYK-EU-01 :-e UPSTREAM_URL=https://deeproxy.eu.snyk.io
SNYK-AU-01 :-e UPSTREAM_URL=https://deeproxy.au.snyk.io
For Broker with Code Agent deployed by Helm chart, use https://github.com/snyk/snyk-broker-helm and add the following variable in the Code Agent chart:
SNYK-US-02: --set upstreamUrlCodeAgent=https://deeproxy.us.snyk.io
SNYK-EU-01: --set upstreamUrlCodeAgent=https://deeproxy.eu.snyk.io
SNYK-AU-01:--set upstreamUrlCodeAgent=https://deeproxy.au.snyk.io
