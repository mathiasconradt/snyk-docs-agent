Since the improved .NET solution will build your .NET Project, Snyk requires access to any private NuGet repositories.
The recommended approach is to use nuget.config files along with registering the credentials in Snyk NuGet private package repository integration (Settings > Integrations > NuGet).
Set up Nuget Repositories from the Settings, Integrations screen
If you are not using nuget.config, but another way of informing the .NET ecosystem of where to look for private packages, Snyk will attempt to add all private NuGet repository credentials defined in the private package repository integration as a dotnet nuget source before restoring the Project.
Fill in the Your tokens fields by adding a Username, the Personal access token, and the repository URL (supports only HTTPS sources). 
For more information, see Package repository integrations.
