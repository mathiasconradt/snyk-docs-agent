Use --maven-aggregate-project instead of --all-projects when scanning Maven aggregate projects, that is, projects that use modules and inheritance.
Using --maven-aggregate-project instructs Snyk to perform a compilation step to ensure all modules within the project are resolvable by the Maven reactor. This ensures a comprehensive scan that includes dependencies of all sub-modules.
Be sure to run the scan in the same directory as the root pom.xml file.
Snyk reports the test results per individual pom.xml file within the aggregate project.
You can use --all-projects when scanning Maven aggregate projects, but you cannot use --all-projects with --maven-aggregate-project.
