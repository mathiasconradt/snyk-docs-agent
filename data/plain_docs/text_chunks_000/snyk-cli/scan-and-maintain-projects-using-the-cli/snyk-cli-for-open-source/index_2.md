When snyk test runs, it tries to autodetect your Project type by looking for a manifest file and scanning the first of these files that it finds. Files that Snyk uses to autodetect the Project type include, but are not limited to, the following:

yarn.lock
package-lock.json
package.json
Gemfile.lock
pom.xml
build.gradle
build.sbt
Pipfile
requirements.txt
Gopkg.lock
vendor/vendor.json
obj/project.assets.json
packages.config
composer.lock
build.gradle.kts
go.mod


 To analyze multiple manifest files, see Scan multiple manifest files.

The way Snyk analyzes the file and builds the tree varies depending on the following:

The language and package manager you use, as determined by the manifest file type
The method of scanning, using the Snyk CLI, or importing a Project using a Git repository integration

See Use options to customize the snyk test command for tips on running snyk test with commonly used options.
See Supported languages, package managers, and frameworks for more information about supported languages.
