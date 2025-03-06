Follow the instructions to install the Snyk Controller with Helm with an extra variable added to the helm upgradecommand:
SNYK-US-01: (no configuration required)
SNYK-US-02: --set integrationApi=https://api.us.snyk.io/v2/kubernetes-upstream
SNYK-EU-01: --set integrationApi=https://api.eu.snyk.io/v2/kubernetes-upstream
SNYK-AU-01: --set integrationApi=https://api.au.snyk.io/v2/kubernetes-upstream
