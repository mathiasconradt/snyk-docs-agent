Navigate to Settings > Languages > JavaScript and either the npm or Yarn settings, depending on your Project type.
If you have not previously connected to Artifactory, you will be asked to configure an integration first; see Artifactory Package Repository connection setup.
Select Add registry configuration.
Select Artifactory as the Package source.
If you want to configure this registry as the default registry url, leave the scope blank.
If you want to configure only scoped packages to use this registry, add a scope. For example, @snyk which would use the configured registry for all deps prefixed or scoped with @snyk.
If you want to add a mix of default registry url and scoped packages, add multiple configurations, one for the default and one per scope.
When you have added all the registries and scopes you want, click Update settings.
