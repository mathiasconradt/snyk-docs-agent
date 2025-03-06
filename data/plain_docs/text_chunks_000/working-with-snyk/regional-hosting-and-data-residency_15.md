Set up your values-customer-settings.yml with the correct Broker Server URL for your region based on the values found in the Broker URLs section.
Then add an extra variable to the values-customer-settings.yml:
SNYK-US-02\
deeproxy:\
verificationEndpoint: "https://api.us.snyk.io/v1/validate/token/snyk-to-deepcode-proxy-validation"
SNYK-EU-01\
deeproxy:\
verificationEndpoint: "https://api.eu.snyk.io/v1/validate/token/snyk-to-deepcode-proxy-validation"
SNYK-AU-01\
deeproxy:\
verificationEndpoint: "https://api.au.snyk.io/v1/validate/token/snyk-to-deepcode-proxy-validation"
