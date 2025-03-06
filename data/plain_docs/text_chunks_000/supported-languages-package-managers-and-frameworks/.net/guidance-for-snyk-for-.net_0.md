Dependency analysis
In the .NET ecosystem, there are multiple levels of dependencies, some of which are obvious and some completely hidden to a developer. To correctly identify the vulnerabilities for a given .NET application, these dependencies must be resolved accurately.
Snyk resolves dependencies differently in the Snyk CLI and the Source Code Management (SCM) systems such as GitHub.
In the CLI, if you manage your Project dependencies using PackageReference, Snyk scans your obj/project.assets.json. if you manage your dependencies using packages.config, Snyk scans the packages directory. This approach contributes to accuracy of scan results.

Runtime dependencies (provided by the runtime environment also known as "meta-packages") are resolved more accurately in the CLI if the host machine uses a similar runtime SDK to the server running the app.

In an SCM integration, scanning uses a different process, as the generated files mentioned above are not available. To overcome this, Snyk follows the NuGet dependency resolution algorithm to construct a dependency tree.
For further information on .NET automated fixes, see the Snyk blog.
