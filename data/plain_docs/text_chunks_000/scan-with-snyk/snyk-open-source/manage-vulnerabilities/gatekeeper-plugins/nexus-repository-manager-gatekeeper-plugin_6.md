Navigate to your Snyk account to copy and save your personal API token or your service account token, and an Organization ID. Both a token and an Organization ID must be configured in order for Snyk to authenticate your account. Because this plugin does not import any data to Snyk, you can use any of your Organization IDs.
From your Nexus instance, navigate to the Capabilities section and select the Snyk Security Configuration in order to edit it.
Ensure Enable this capability is checked, and enter details for the remaining fields as follows:
Snyk API URL - enter the API endpoint to use for Snyk requests
Snyk API token - paste the token value you saved at step 1
Snyk Organization ID - paste the value you saved at step 1
Vulnerability Threshold - the default is low. Valid values include none (will not block artifacts download), low, medium, high. Manually update the configuration based on your needs.
License Threshold - the default is low. Valid values include none (will not block artifacts download), low, medium, high. Manually update the configuration based on your needs.
Shut down the Nexus service instance and then restart it.
Log in to your Nexus instance and check that the Snyk bundle has been installed successfully.

Capabilities to configure
