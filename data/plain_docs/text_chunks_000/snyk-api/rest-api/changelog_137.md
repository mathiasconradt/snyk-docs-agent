Cancel a pending user invitations to an organization.

2022-11-07
GET - /orgs//slack_app//channels - Added

Requires the Snyk Slack App to be set up for this org, will retrieve a list of channels the Snyk Slack App can access. Note that it is currently only possible to page forwards through this collection, no prev links will be generated and the ending_before parameter will not function.
