Project failed to build due to missing type or namespace references
While attempting to build your solution for scanning, the dotnet SDK was unable to restore one or more projects referenced in your manifest files.
Please note that Snyk runs these builds on a case-sensitive filesystem, meaning that <ProjectReference>../src/NS.Project.csproj</ProjectReference> and <ProjectReference>../src/ns.project.csproj</ProjectReference> are not referring to the same thing.
This can present itself as a problem for customers that are using Mac or Windows build pipeline where file systems are not case-sensitive. In this case, verify you're referring to the right manifest files and check the Snyk import logs for more details.
HTTP Status: 422
Help Links:
- https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/compiler-messages/assembly-references#missing-references
