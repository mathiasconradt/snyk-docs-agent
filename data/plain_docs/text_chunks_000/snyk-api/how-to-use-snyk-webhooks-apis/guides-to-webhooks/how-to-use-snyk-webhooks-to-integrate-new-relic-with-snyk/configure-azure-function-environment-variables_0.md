For more information about configuration of Azure Function environment variables, see the Microsoft Azure Functions documentation article Manage your function app.
Navigate to your Azure Function App Configuration and add the following new application settings:

NEW_RELIC_SECURITY_URL: URL for the New Relic Security API, that is, https://security-api.newrelic.com/security/v1
NEW_RELIC_LICENSE_KEY: New Relic License Key

If you are using Azure DevOps Repos in your Snyk account, you may also want to configure the following application setting:

AZURE_DEVOPS_ORG: the name of your Azure DevOps organization

If you want to use the optional parameters for troubleshooting in a separate New Relic event, configure the following application settings:

NEW_RELIC_INSIGHTS_URL: URL for the New Relic account event API, that is, https://insights-collector.newrelic.com/v1/accounts//events

Azure Function Configuration
Next Copy the Azure Function URL.
