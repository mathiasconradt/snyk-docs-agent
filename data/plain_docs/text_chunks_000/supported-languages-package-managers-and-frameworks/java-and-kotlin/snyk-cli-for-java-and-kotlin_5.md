Gradle build can consist of several sub-projects, where each sub-project has its own build.gradle, while the root Project is the only one that also includes a settings.gradle file. Sub-projects depend on the root ProjectProjects but can be configured otherwise.
By default, Snyk CLI scans only the current Project, the Project in the root of the current folder, or the Project that is specified by --file=path/to/build.gradle).


To scan all Projects at once (recommended), use the --all-sub-projects option:
snyk test --all-sub-projects


Each of the individual sub-projects appears as a separate Snyk Project in the Web UI.


To scan a specific Project (for example, myapp):
snyk test --sub-project=myapp
