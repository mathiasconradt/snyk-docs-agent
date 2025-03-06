Maven
The snyk test command tests the first manifest it can find, and scans that singular entry point. To scan all manifests, follow these instructions:

To scan aggregate projects, use the --maven-aggregate-project option\
  (for example, snyk test --maven-aggregate-project)
To scan for all projects use --all-projects option:\
  (that is, snyk test --all-projects)

Snyk scans active profiles activated by default.

Any additional Maven arguments can be passed, a common one is a non-standard settings.xml location. For example, snyk test -- -s path/to/settings.xml
To scan a specific configuration, test a specific Maven profile using -P [name]. For example, use snyk test -- -P prod to scan the prod configuration.

Gradle
By default, Snyk CLI scans only the current project (the project in the root of the current folder), or the project that is specified by --file=path/to/build.gradle.
Note that --all-projects can be used across all package managers, which also includes the behaviors of --all-sub-projects, mentioned below.

To scan all projects at once (recommended), use the --all-sub-projects option:\
  (that is, snyk test --all-sub-projects). Each of the individual sub-projects appears as a separate Snyk Project in the Web UI.
To scan a specific project (for example, myapp), use --sub-project= (that is, snyk test --sub-project=myapp).

To test specific configurations, see detailed examples here Snyk for Java and Kotlin.
For Android Build variants, see Snyk for Java and Kotlin.
Unmanaged
For more details on unmanaged Jars, navigate to the Scan all unmanaged JAR files page.
