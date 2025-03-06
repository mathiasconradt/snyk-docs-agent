When SSO is enabled, JIRA usually prohibits the use of a username and password and requires the use of a personal access token (PAT).
When SSO is enabled, you must use a specific Jira version that will instead use the authorization header with the bearer token. To use this version, provide the following configuration:
helm install snyk-broker-chart snyk-broker/snyk-broker \
             --set scmType=jira-bearer-auth \
             --set brokerToken=<ENTER_BROKER_TOKEN> \
             --set jiraPat=<ENTER_JIRA_PAT> \
             --set jiraHostname=<ENTER_JIRA_HOSTNAME>  \
             --set brokerClientUrl=<ENTER_BROKER_CLIENT_URL>:<ENTER_BROKER_CLIENT_PORT> \
             -n snyk-broker --create-namespace

You must use the Helm chart version 2.2.0 or above.
