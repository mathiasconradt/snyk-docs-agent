The following lists some of the main supported Gradle features:

Groovy and Kotlin DSLs - build.gradle(.kts) and settings.gradle(.kts)
Built-in and custom package repositories, or example, Artifactory, Nexus
Built-in objects ext, project, rootProject, and settings
Local and global variables, maps, and string interpolation
Custom files referenced using apply from
Type-safe project accessors
Gradle lockfiles
Gradle properties and system properties - gradle.properties
Dependency exclusions
Version catalogs declared in Gradle and TOML files - gradle/libs.versions.toml
Multi-project builds, project names, project references
Spring's mavenBom
Maven BOMs as platform dependencies

Some Gradle features are not supported, and this may influence the scan results. These Gradle features include:

Custom configuration in buildSrc directories
Dependencies introduced via plugins.

If you see unexpected results from this Early Access feature, contact Snyk support.
