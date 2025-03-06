When SSO is enabled, JIRA usually prohibits the use of a username and password and requires the use of a personal access token (PAT).
When SSO is enabled, you must use a specific Jira version that will instead use the authorization header with the bearer token. To use this version, provide the following configuration:
docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=secret-broker-token \
           -e JIRA_PAT=<your_pat_token> \
           -e JIRA_HOSTNAME=your.jira.domain.com \
           -e BROKER_CLIENT_URL=http://my.broker.client:8000 \
           -e PORT=8000 \
       snyk/broker:jira-bearer-auth
