You can control the severity settings of your security rules at the Organization level in the Snyk UI. By targeting a specific Organization in your CLI tests, you can determine which rules should be run and their severity.
Use the following command to specify the Organization:
snyk iac test  --org=infrastructure
Example:
snyk iac test main.tf --org=infrastructure
You can also set the org flag in snyk config, so you do not need to use the --org option each time you want to specify the Organization.
snyk config set org=infrastructure
