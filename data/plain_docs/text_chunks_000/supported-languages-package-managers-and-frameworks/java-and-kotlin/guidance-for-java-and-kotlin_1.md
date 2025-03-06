For open source, developers may have decided to use Maven or Gradle, which may impact how you best utilize Snyk to perform the analysis


Using Maven, or Gradle with a gradle.lockfile:
The Git code repository integration is a great way to use Snyk and get visibility or you may decide to use CLI/IDE or CI/CD integrations to test/gate/monitor, or do both!
*   Using Gradle without a Gradle.lockfile:
The full dependency tree may not be apparent or artifacts may be pulled in from external resources, so the CLI/IDE workflow (for local scans), and CI/CD is the recommended approach for analysis, otherwise you may not have a complete view of issues and dependencies.
