In your template Organization, configure a range of settings that you can choose to copy when creating your full Organization structure:

All relevant integrations, for example, GitHub Enterprise, Docker Hub.\
  If you have on-premise source code management tools, you must configure and run Snyk Broker to enable the integration.
Integration settings, for example, configuring whether you want Snyk to run tests on PRs.
The default settings for a new Git repository integration include Snyk running tests on newly raised PRs and the option to automatically raise PRs when new vulnerabilities are found. Snyk recommends disabling these settings initially and turning them on when you are ready to introduce these features in the Prevention Stage.
The following Integrations section discusses integrations you may want to add to your templates before copying them.
Product settings, for example, enabling Snyk Code.
By default, Snyk Code is disabled for new Organizations.
If you want to enable SAST scanning of repositories imported through a Git repository integration, ensure you use the toggle to enable Snyk Code before importing your Projects.
If you use Snyk Code and forget to enable it before importing your Project, you must enable Snyk Code and reimport your code from Git. See Enabling Snyk Code.
Notification settings (email notifications)
Snyk suggests that you initially disable all Group and Organization email notifications so users do not receive a large number of notifications while Projects are imported.
To do this, disable Notifications at the Group level for new organizations, and at the Organization level for all existing Organizations.

The following table shows what is copied from the template Organization to the new Organizations you create using the web interface or API\
All integrations and their settings WILL be copiedThe following WILL NOT be copiedSource control integrationsSnyk Service accountsContainer registry integrationsMembersContainer orchestrators integrations (Kubernetes)ProjectsPaaS and Serverless integrationsNotification preferencesNotificiation integrations (Slack and Jira)PoliciesIgnore settingsLanguage settingsInfrastructure as code (IaC) settingsSnyk Code settings
