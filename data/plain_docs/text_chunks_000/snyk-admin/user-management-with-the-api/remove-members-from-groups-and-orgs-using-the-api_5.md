When an SSO connection is associated with only one Group, the following call can completely delete a Group member from the system. This delete action also complies with the GDPR (General Data Protection Regulation) requirements.
Request: DELETE https://api.snyk.io/rest/groups//sso_connections//users/?version=2023-01-30~beta
Endpoint: Delete a user from a group SSO connection (Beta, use current version)
You can find the  on the Snyk Web UI; navigate to Group >Settings >SSO >Step 3. If you need help, reach out to your Account team.
Self Serve SSO screen, Step 3, sso_id highlighted
For a successful request, the response is 200 OK.
Use the following request to verify the member has been deleted.\
GET https://api.snyk.io/v1/user/userId
