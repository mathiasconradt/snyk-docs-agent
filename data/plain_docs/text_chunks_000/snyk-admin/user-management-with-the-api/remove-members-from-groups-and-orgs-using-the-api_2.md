Request: DELETE https://api.snyk.io/v1/org//members/update/
Endpoint: Remove a member from the organization
For each user, call the endpoint to remove that member from the Organization using the user id you saved previously.
For a successful request, the response is 200 OK.
Look at the Organization members page to verify that the member has been removed.

When a member is removed from an Organization, if the Organization is a part of a Group, the user continues to exist in the Group as a Group Member. To completely remove the user from the Group, follow the steps in the next section.
