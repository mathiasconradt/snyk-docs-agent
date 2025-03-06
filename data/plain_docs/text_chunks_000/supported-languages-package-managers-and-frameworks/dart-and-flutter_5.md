Flutter applications often rely on native platform dependencies to handle lower-level tasks, such as analytics, hardware access, or integrating existing functionality. These dependencies can be added through pub packages to extend functionality or integrated directly into build systems like Gradle or Cocoapods.
Snyk’s regular open-source support can scan these packages; however, a complete app build is necessary to make them available in the repository and accessible to CLI tools.
Start by building the application for all relevant platforms. This ensures that pub fetches all required packages, and the Flutter build system establishes the necessary links for the native build systems.
flutter build apk --debug
flutter build ios --debug --no-codesign
flutter build macos --debug
Next, run the snyk monitor command to scan for native dependencies:
snyk monitor --all-projects --exclude=example,.symlinks
The --exclude parameter removes duplicates and ignores example applications, which are part of the plugin source code but not included in regular application builds.
Now you will be able to view all native dependencies, including those introduced by third-party plugins, in the Snyk Web UI.
Snyk Project page showing dependencies in Flutter apps
If you need help, contact Snyk Support.
