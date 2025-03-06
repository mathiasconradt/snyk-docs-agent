Use Dynatrace SaaS on the DPS licensing model.
The Dynatrace Kubernetes app is configured to monitor at least one cluster.
The user is associated with a group that has permissions (through policies) to query the entity model. In the Dynayrace policy, set the following permission: storage:entities:read.

Comply with the following steps before integrating Dynatrace with Snyk AppRisk:

Retrieve the account-uuid from your Dynatrace account. Navigate to the Dynatrace accounts page and select the account whose environment you want to integrate into Snyk. Identify the account-uuid in the URL and save it for later use.
Ensure you have OneAgent deployed in your Kubernetes environment. Navigate to Settings then Environments and select the environment you want to integrate into Snyk. Save the environment ID for later use (available in the URL of the new window as well). Click Deploy OneAgent then Kubernetes and follow the instructions. Ensure OneAgent is running in full-stack mode.
Ensure your deployment is activated. On your environment's page, click Kubernetes , then Recommendations and activate the cluster where you deployed OneAgent.
Under account management:
Create a new Permissions Group. Add the following permissions to the group:
Enable View and manage account and billing information under Account Management permissions.
Add both All Grail data read access and Read Events under general permissions.


Create a new, dedicated user to be used by the integration and assign to it the newly created Permissions Group mentioned above.
Create a new OAuth client:
Set the Service User Email as the email address of the newly generated user mentioned above.
Set the Permissions for the client - Under Grail data ingest and query select View entities (storage:entities:read).
Ensure to hold a copy of the Client ID and Client Secret to be used in a later phase when configuring the integration in Snyk.
