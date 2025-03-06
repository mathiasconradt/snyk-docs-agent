Deploy with configured POST method so the AWS Lambda function can start receiving the information.
Follow these steps to deploy the POST method:

Go to the Resources tab.
Click POST.

On the Actions tab, click Deploy API.
AWS API Gateway POST method Resources, Action tab with Deploy API selected
4.  Select the Deployment stage to which you want to deploy the new API, in this case, the default stage.
AWS Gateway Deploy API to default stage
5. Navigate back to your Lambda function and In the Lambda trigger configuration, verify you see a new API endpoint.
6.  Copy the API endpoint from the API Gateway boxes (obscured) for use in setting up the Snyk webhook.
AWS Lambda function trigger configuration showing new endpoint
7. Now that the API endpoint is saved, set up the Snyk Webhook.
