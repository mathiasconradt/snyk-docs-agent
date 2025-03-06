You will set up the Snyk Webhook using the Snyk API v1 including the built-in console.
To set up the Snyk Webhook, follow these steps:


Copy your Organization ID from the Organization settings in the Snyk Web UI.
Snyk Web UI copy Organization ID
2.  Get your Organization admin API Token from the Snyk Web UI, either from a Service Account or your own account.
Snyk Web UI get API Token
3.  Switch to Console in the Snyk API v1 and add your organization ID as a parameter.
Snyk API v1 add orgId to POST to Create a webhook
4.  In the Headers section add your Snyk API key to the Authorization.
Snyk API v1 add API key to Authorization
5.  In the Body section add your values\
{\
“url”: “value-of-your-public-url”,\
“secret”: “value-of-your-lambda-secret-environment-variable”\
}
Snyk API v1 POST body
6. Click Call Resource.


With this request done, your connection from Snyk to Slack will be completed. Every time there is a new vulnerability, you will get a new notification.
