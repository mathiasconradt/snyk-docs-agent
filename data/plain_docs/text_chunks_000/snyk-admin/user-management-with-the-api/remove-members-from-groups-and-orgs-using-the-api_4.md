Request: PATCH https://api.snyk.io/rest/groups//users/?version=2024-07-10\~beta
Endpoint: Update a user's role in a group (Beta, use current version)
Body:
postman_json
{
    "data": {
        "attributes": {
            "membership": null
        },
        "id": "<user-id>",
        "type": "user"
    }
}
For each user, to remove that member from the Group, call the endpoint using the user id you saved previously.
For a successful request, the response is 200 OK.
Look at the Group members page to verify the user has been removed.

When a member is removed from a Group, the user continues to exist in Snyk. To completely delete all data associated with the user, follow the step in the next section.
