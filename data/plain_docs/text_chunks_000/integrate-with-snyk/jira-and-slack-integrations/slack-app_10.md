Find the Slack App Bot ID
To interact with the Project-level notification customization endpoints, you must have a bot_id. You can obtain it with a request to the endpoint Get a list of bots authorized to an organization.
GET /orgs//app_bots

Ensure you apply the expand=app query string on your request. This enables you to find the Bot for the related Snyk App named Slack App.
