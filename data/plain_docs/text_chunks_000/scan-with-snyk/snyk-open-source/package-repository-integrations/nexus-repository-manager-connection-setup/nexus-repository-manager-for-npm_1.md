Go to Settings > Languages > JavaScript and either the npm or Yarn settings, depending on your Project type.
If you have not previously connected to Nexus Repository Manager you will be asked to configure an integration first; see Nexus Repository Manager connection setup.
Follow the steps on the tabs below, according to your version of Nexus.
Configure Nexus registry


1. Select Add registry configuration.
2. Select Nexus as the Package source.
3. If you want to configure this registry as the default registry url, leave the scope blank.
4. If you want to configure only scoped packages to use this registry, add a scope.
5. If you want to add a mix of the default registry url and scoped packages, add multiple configurations, one for the default and one per scope.
6. The Repository section should be set as whatever comes after repository/ in the internal repository URL.\
   For example, if the URL is http://nexus.company.io/repository/npm-group, Repository should be set as npm-group.
7. When you have added all the registries and scopes you want, click Update settings.


1. Select Add registry configuration.
2. Select Nexus as the Package source.
3. If you want to configure this registry as the default registry url, leave the scope blank.
4. If you want to configure only scoped packages to use this registry, add a scope.
5. If you want to add a mix of the default registry url and scoped packages, add multiple configurations, one for the default and one per scope.
6. The Repository section should be set as whatever comes after nexus/content/ in the internal repository URL.\
   For example, if the URL is http://nexus.company.io/nexus/content/groups/npm-group, Repository should be set as groups/npm-group .\
   Or for http://nexus.company.io/nexus/content/repositories/npm-hosted, Repository should be set as repositories/npm-hosted.
7. When you have added all the registries and scopes you want, click Update settings.
