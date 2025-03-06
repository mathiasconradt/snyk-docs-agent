A Maven aggregate Project is one that uses modules and inheritance.
When scanning these types of Projects, Snyk performs a compile to ensure all modules are fixable by the Maven reactor.


To scan aggregate Projects, use the --maven-aggregate-project option:
snyk test --maven-aggregate-project
*   To scan non-aggregate Projects, use the --all-projects option:
snyk test --all-projects


The same options can be used with snyk monitor.
Be sure to execute the options in the same directory as the root pom.xml file.
Each of the individual sub-projects appears as a separate Snyk Project in the Web UI.
Refer to the following example to see how Maven-specific options are used with the Snyk CLI.

Test a specific Maven profile called “prod”.

snyk test -- -prod

Add a system property from your pom.xml file, for example, the package version that appears in your pom.xml:

$

Define the system property like this:

snyk test -- -Dpkg_version=1.4
