Snyk recommends you use the Snyk settings page to configure custom rules settings. This is a simple way to update the custom rules bundle's URL and tag whenever these are modified.

Tags are helpful for versioning your custom rules bundles. Configuring your updated bundle can be easily accomplished by setting the new version tag.

You can configure these remote bundles on both the Organization and Group levels. Configuring a remote bundle for a Group applies the remote bundle to all the Organizations in the Group.
To configure remote bundles:

In the Infrastructure as Code Settings, locate the Rules section.


You can configure remote custom rules bundles on the Organization level by navigating to Settings > Infrastructure as Code.
You can configure remote custom rules bundles on the Group level by navigating to Settings > Infrastructure as Code.

Enable remote custom rules bundles

Enable configuration of remote bundles by using the Enable rules toggle. Doing so loads the form to specify the Registry URL and tag as shown in this example:

Specify Registry URL and tag form

Configure the OCI registry URL and tag for your remote bundle of custom rules and click Save changes to save.

Registry URL and tag configured
Your remote bundle of custom rules is now configured and will be used when testing IaC files.
You can override remote bundle configurations for a Group using Snyk Settings.
By default, configuring a remote bundle for a Group applies the remote bundle to all the Organizations in the Group. Thus if the Group configurations are updated, these changes apply to all of its Organizations.
However, an Organization can still override the Group configurations and define its own bundle and tag. These will not change when the Group updates its configurations.
To override the Group configurations, go to the Organization's Rules section in the Infrastructure as Code Settings.

Initially, the section is populated with the configurations inherited from the Organization's Group.

Organization Rules section in the IaC Settings

Update the configurations to those customized for your Organization and click Save changes.

Organization rules configuration updated

Now, configurations on the Group level will not override these customized settings for your Organization.

You can restore the inheritance of Group configurations at any time by using the Reset to group default button.
