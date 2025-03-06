To delete a Project tag from the Group, use the API endpoint Delete a tag from a Group.
This endpoint has the option in the Body to specify "force": false or "force": true. If you specify "force": true, the tag will be removed from any Projects to which it is applied, and it will then be deleted. If you specify "force": false and the tag is still applied to any Projects, error 403 “the tag has entities” occurs. Otherwise, tag deletion should succeed. 

A tag will only exist if it has been created and applied to one or more Projects. If a tag is
removed from all Projects, it will no longer exist.
