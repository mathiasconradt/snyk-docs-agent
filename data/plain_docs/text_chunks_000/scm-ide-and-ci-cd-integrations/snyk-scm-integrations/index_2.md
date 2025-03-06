At the Group level, you can set up and customize your Snyk Essentials integrations from the Integrations Hub where the following SCMs are available:

GitHub
GitLab
Azure DevOps
BitBucket

Snyk Essentials Group-level SCM integrations provide broader visibility into all the application assets for a given customer and pull in the additional application context and, or metadata, for example, information on developers, commits, and so on.

If your SCM instance is not publicly accessible, you must connect using Snyk Broker. For details, see Snyk Broker - Snyk Essentials.

The Integrations page at the Group level shows all active integrations, including any data automatically synced from your existing Snyk Organizations, and provides access to the Integration Hub.

The SCM integrations use an incremental approach to retrieve repositories. This means that when a sync is initiated, it checks the last update time of the repository and only transfers the repositories that have been modified since then.
If there have been changes to the scope of the user or PAT used for the integration, any repositories that are newly within scope will only be identified after either a change to trigger the incremental collection or a change to the integration configuration itself.

The following supported Snyk data are automatically synced:

Snyk Open Source
Snyk Code
Snyk IaC
Snyk Container 

Each connected integration enables you to:

Pause data syncing
Modify integration profiles and configurations
Delete the integration
Check when the integration was last synced and when the next sync is scheduled.

See the Integration syncing time for more details about the time required to sync for each action.
