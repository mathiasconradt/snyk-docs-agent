Log in to your Snyk account.
Select Settings > General to locate, copy, and save the following:
Service account token or Organization API token
The Organization ID for any one of your organizations
Navigate to the Snyk Artifactory plugin repo in GitHub and then to the Releases.
From the most current release, expand the Assets section to download the artifactory-snyk-security-plugin-\.zip archive.
Extract the archive. It should have the following structure: plugins (directory) followed by
snykSecurityPlugin.groovy — plugin
snykSecurityPlugin.properties — plugin configuration
lib (directory)
artifactory-snyk-security-core.jar - plugin library
snykSecurityPlugin.version - plugin version


Open snykSecurityPlugin.properties in a text editor.
Set the API Token and Organization ID from the earlier steps as snyk.api.token and snyk.api.organization respectively.
Configure the rest of the properties as needed or leave them as defaults. See the section Plugin configuration.
For a full list of properties, view the properties file on GitHub.
Place all the files under $JFROG_HOME/artifactory/etc/artifactory/plugins.
Restart your Artifactory server. Refresh now or Reload is not sufficient. Artifactory must be restarted.
Log in to your Artifactory instance and navigate to the System Logs to check that Snyk has been installed successfully.

Successful installation of Snyk
