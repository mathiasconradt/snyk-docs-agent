Target Frameworks: Snyk identifies the target frameworks and presents results against each identified version using the git integration.
Development dependencies: Snyk generally does not scan developer dependencies, as they are not usually pushed to production and are seen as "noise." \
Enable visibility in Nuget git import using the Settings > Languages > .Net settings (see Git settings for .NET). \
Snyk scans and fixes the build and development Dependency sections of your *.proj[^1], packages.config and project.json files
Lock files: Currently, packages-lock.json is not supported. Snyk interacts with the build system to determine the installed dependencies.
PackageReference: Snyk currently requires a version attribute. If your Project lacks this, Snyk may fail to open a PR for your Project.
Git analysis
How dependency trees are created:

For .NET Core, using the *.proj files 
For .NET Framework, using the *.proj file, and packages.config

SCM integrations support the following: 

*.csproj 
*.fsproj
*.vbproj
packages.config

Fix Pull Requests

If you currently manage your Project dependencies with NuGet and leverage PackageReference or packages.config Snyk can automatically update the dependency version in your manifest file, provided there is an actual fix for it. You can then review and merge your fixes.

CLI Analysis
The CLI supports the following config files:
project.assets.json
Snyk can scan project.assets.json to determine dependencies, but the file must be generated. Similarly, if you point to the solution file (.sln), you must generate the file first.
Run "dotnet restore" to generate the necessary project.assets.json before running the "snyk test" command.
The solution file contains pointers to the files necessary to perform the analysis. Note that the projects themselves must have project.assets.json files to be scanned. If you want Snyk to use the solution file as an entry point for scanning, you can point the Snyk CLI to the solution file by using --file=<filename>.sln.
Where multiple target frameworks are used in the same Project, the CLI scan returns results for the first target framework declared in the Project.
packages.config
Run "nuget install -OutputDirectory packages" before running the snyk test command.

Runtime dependencies (provided by the runtime environment known as "meta-packages") are resolved more accurately in the CLI if the host machine uses a similar runtime SDK to the server running the app.
