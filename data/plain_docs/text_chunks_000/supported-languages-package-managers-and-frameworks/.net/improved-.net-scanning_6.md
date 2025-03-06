The .NET scanning improvements are also available in the Snyk CLI for both the snyk test and snyk monitor commands.
Follow these steps to enable the improvements:

Install the latest version of the CLI.
Run dotnet restore.
Scan your .NET Projects using snyk test or snyk monitor as usual, but add the --dotnet-runtime-resolution option.

The --dotnet-runtime-resolution option works with--all-projects.
Example: snyk test --dotnet-runtime-resolution
The Improved .NET scanning for the CLI supports multiple target frameworks in your build manifests.
By default, the solution scans all target frameworks. If you want to scan individual target frameworks, you must add the --dotnet-target-framework=<targetFramework> option to your CLI command.
Example: snyk test --dotnet-runtime-resolution --dotnet-target-framework=net8.0
