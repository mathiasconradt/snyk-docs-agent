Navigate to Settings > Languages > JavaScript and either the npm or Yarn settings, depending on your Project type. Yarn is shown in the screenshot.
If you have not previously connected to npm Teams or npm Enterprise, you will be asked to configure an integration first. See npm Teams and npm Enterprise registry settings.
After you have set up the integration, select Add registry configuration.
Select npm as the Package source.
If you want to configure this registry as the default registry url, leave the scope blank.
If you want to configure only scoped packages to use this registry, add a scope.
If you want to add a mix of default registry url and scoped packages, add multiple configurations, one for the default and one per scope.
When you have added all the registries and scopes you want, click Update settings.
To test the integration, open a Pull/Merge Request on a Project that contains private dependencies to see a lockfile updated and included in the Snyk Fix Pull Request where previously none was generated.

Test of npm integration
