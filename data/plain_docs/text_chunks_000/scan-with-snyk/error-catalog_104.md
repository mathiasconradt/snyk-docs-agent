The dotnet CLI was unable to restore from private package sources
This error occurs when running dotnet restore fails to access dependencies stored in a private package source that Snyk does not have access to. 
This means that your .csproj file or files refer to a dependency hosted on a private package store or Nuget Artifact Registry defined in your NuGet.config file, such as:
```xml
xml version="1.0" encoding="utf-8"?







```
In order to allow Snyk to access your private dependency package source, you must supply Snyk with a valid JSON object as a private registry token in the .NET language settings.
You can set up a connection to your private Nuget repository in your Snyk integration settings.
HTTP Status: 401
Help Links:
- https://github.com/microsoft/artifacts-credprovider#environment-variables
