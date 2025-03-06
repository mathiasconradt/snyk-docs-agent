You can create an oauth_client_secret service account at either the Group or Organization level by calling the API endpoint Create a service account for an organization or Create a service account for a group, or through the Snyk Web UI. 
The response returns the client_secret and the client_id.  You cannot view the client_secret again after the service account is created. If you have misplaced it, you can rotate your client_secret and receive a new one.

Never share the client_secret publicly, as this is used to authenticate your service account. Keep it secure and private.
