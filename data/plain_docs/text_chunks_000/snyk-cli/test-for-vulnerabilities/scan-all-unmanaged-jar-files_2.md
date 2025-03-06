The method described here is deprecated.
Beginning with Snyk CLI 1.1176.0, by default you can scan all subfolders using the --scan-all-unmanagedoption. When you scan using --scan-all-unmanaged, the package name appears rather than the file name.

Java apps often have JAR files in a number of different folders within an application.
The following is a Linux/Mac Bash script used with CLI versions before Snyk CLI 1.1176.0 that recurses through all subfolders starting with the current folder and tests each JAR file found.
Setting a value for the REMOTE_REPO_URL variable is important; it is used to combine all scan results under a single Snyk Project in the UI using the --remote-repo-url parameter.
```
