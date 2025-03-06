Request: PUT https://api.snyk.io/v1/org//members/update/
Endpoint: Update a member's role in the organization
For each user, call the endpoint Update a member's role in the organization to set the member's new role, using the user id and role id you collected previously.
You pass a rolePublicId in the JSON-formatted body of the request. This is the role publicId you saved in the first step.
For a successful request, the response is 200 OK.
You can verify the change on the Organization members page (for humans) or the Service Account Settings page (for robots).
