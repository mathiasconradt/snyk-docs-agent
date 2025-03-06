The dotnet CLI is unable to generate a self-contained binary
This error occurs when running dotnet publish --sc --framework <your-target-framework> fails to generate a 
self-contained binary. Snyk needs to run this command in order to adequately determine the dependency tree for your project. If this command fails, Snyk cannot continue.
Steps to determine why this happened:

Checkout a clean version of your project in a temporary folder
Run dotnet publish --sc --framework <your-target-framework> on your project, and confirm this step fails.

If this step is successful locally, it is possible that Snyk is running another version of the .NET SDK. To tell Snyk which version of the .NET SDK to use, consider using the global.json solution provided by Microsoft.
HTTP Status: 422
Help Links:
- https://learn.microsoft.com/en-us/dotnet/core/tools/sdk-errors/
- https://learn.microsoft.com/en-us/dotnet/core/tools/global-json
- https://github.com/snyk/snyk-nuget-plugin/blob/885486aa656c28d3db465c8d22710770d5cc6773/lib/nuget-parser/cli/dotnet.ts#L67
