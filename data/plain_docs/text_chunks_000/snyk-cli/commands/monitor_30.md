See also the --all-projects option information in the Options section of this help.
Use for monorepos. This detects all supported manifests.
For Gradle monorepos Snyk looks only for root level build.gradle / build.gradle.kts files and applies the same logic as --all-sub-projects behind the scenes.
This option is designed to be run in the root of your monorepo.
For more details, see the following support article: Scanning Gradle projects in CLI with --exclude option does not exclude sub-projects
