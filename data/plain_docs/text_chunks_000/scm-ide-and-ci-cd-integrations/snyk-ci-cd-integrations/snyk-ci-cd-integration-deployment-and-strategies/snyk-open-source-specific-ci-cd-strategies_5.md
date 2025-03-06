Some customers have complex Projects, with multiple languages, package managers, and Projects in a single repository. To facilitate this, you can take different approaches:


As you build each Project and language, add a directive to run snyk test and target a specific Project file, for example:
snyk test --file=package.json
* After you install the dependencies of each Project, make a similar call pointing to the specific artifact, such as pom.xml. This is fast and efficient but can be difficult to scale, especially if you are not familiar with the Project.
* For most Gradle Projects, using --all-projects works as it invokes Gradle-specific options behind the scenes in the form of: snyk test --file=build.gradle --all-sub-projects when it finds the build file as part of the --all-projects search.
* Gradle may require additional configuration parameters. If so, target the other artifacts by using --file= for each manifest in the other languages and package managers. You must then use --all-sub-projects and potentially --configuration-matching to scan a complex Gradle Project.


See Java and Kotlin for more information.
