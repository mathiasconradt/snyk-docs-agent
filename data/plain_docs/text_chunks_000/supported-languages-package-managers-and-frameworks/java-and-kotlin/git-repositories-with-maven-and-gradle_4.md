Improved Gradle scanning supports importing a maximum limit of 5,000 build.gradle(.kts) files per Git repository. Attempts to import repos with more than 5,000 Gradle build files will fail.

To enable this feature, follow these steps for your Snyk Organisation:

Configure package repository integrations (if you use Artifactory or Nexus, see below).
Enable Workspaces for SCM integrations.
Enable Improved Gradle scanning in Snyk Preview.

After Improved Gradle SCM scanning is enabled:

Previously imported Git repositories will have existing Gradle Groovy DSL Projects automatically updated on the next manual or recurring test.
Re-import the repository to start seeing results for Gradle Kotlin DSL Projects.
