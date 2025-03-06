After you select a Project for import, Snyk builds the dependency tree based on the build.gradle file and (optional) gradle.lockfile.
Improved scanning for Gradle Projects (including Groovy and Kotlin DSLs) is now in Early Access as explained on this page.
Only production dependencies in the api, compile, classpath, implementation, runtime and runtimeOnly configurations are included.
If possible, enable Gradle lockfiles in your application. When present, Snyk can more accurately resolve the final version of dependencies used in the Project.
For Gradle projects without lockfiles, Snyk recommends using the Snyk CLI for the most accurate results.
