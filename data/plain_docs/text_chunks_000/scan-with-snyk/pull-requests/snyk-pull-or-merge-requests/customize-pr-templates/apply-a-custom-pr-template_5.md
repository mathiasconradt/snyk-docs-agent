If you use  Snyk Broker, you must use a Broker at version 4.188.0 or higher and enable the Broker to fetch the custom PR templates using theACCEPT_CUSTOM_PR_TEMPLATES environment variable.
To do this, you must remove ACCEPT=/path/to/custom.json and add the following environment variable to your Broker container or deployment:
ACCEPT_CUSTOM_PR_TEMPLATES=true
[^1]:
