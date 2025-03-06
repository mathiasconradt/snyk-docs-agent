You can have a large number of users in your Organizations and Groups.
Snyk recommends structuring your Organizations so that there are no more than 2,000 users in each Organization.
If you have more than 2,000 users in an Organization, you begin to risk performance issues. When the application must load a large number of users, performance is slowed for the dashboard and the Group members management page.
If users have a large number of memberships in a given Group, all requests--in the Snyk Web UI and through the CLI and the API, are slowed because, on most requests, calculations and queries occur to check access and permissions.
