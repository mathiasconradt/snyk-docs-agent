--maven-aggregate-project
Use --maven-aggregate-project instead of --all-projects when scanning Maven aggregate projects, that is, ones that use modules and inheritance.
When scanning these types of projects, Snyk performs a compile to ensure all modules are resolvable by the Maven reactor.
Be sure to run the scan in the same directory as the root pom.xml file.
