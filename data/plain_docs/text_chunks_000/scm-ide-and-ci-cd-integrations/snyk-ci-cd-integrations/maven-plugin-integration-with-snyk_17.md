To try out this plugin, see the demo project.
Migrating from Snyk Maven Plugin v1 to v2
All plugin parameters from v1 should be moved to the <args> object, to keep them in line with the CLI usage. For example:

org => <arg>--org=my-org-name</arg>
failOnSeverity => <arg>--severity-threshold=low|medium|high</arg>
failOnAuthError => Use <skip>true</skip> to skip plugin execution.
includeProvidedDependencies => provided dependencies are always included.

For a list of supported arguments, see Configuration.
