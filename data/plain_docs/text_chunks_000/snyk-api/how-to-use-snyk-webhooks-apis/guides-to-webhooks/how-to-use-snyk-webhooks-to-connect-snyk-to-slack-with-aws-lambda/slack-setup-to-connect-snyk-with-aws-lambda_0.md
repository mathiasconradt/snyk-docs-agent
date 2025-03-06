To enable Snyk to communicate with Slack, start by setting up incoming webhooks through Slack Apps. These are provided by Slack to enable developers to communicate with Slack.
To set up Slack Apps with a webhook, follow these steps:

Go to https://api.slack.com/apps.

Select Create New App.
Your Apps in Slack
3.  Select From scratch.
Create a Slack app from scratch
4. Give the app a name like "Snyk".
5. If you want to set the logo and an appropriate background you can download the Snyk logo here while using background color #1d1848.
6. Select your workspace.
7. With the Slack App created, click Add features and functionality.
8.  Select Incoming Webhooks.
Add features and functionality to Slack App, Incoming webhooks
9.  Activate incoming webhooks in that page.
Incoming webhooks activation
10. Generate a webhook URL for the channel you want by clicking on Add New Webhook to Workspace.
11. Select the channel you want Snyk to post to. If you haven’t already done so, create a channel.
12. When the webhook has been created, copy and save the webhook URL to use in the next step in AWS.


Generated webhook with Webhook URL
