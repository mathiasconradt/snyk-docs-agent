Snyk Open Source

Snyk accesses manifest files, lock files, and related configuration files in order to identify your open-source dependencies.
Snyk accesses your source code under these scenarios:
When Workspaces for SCM integrations is enabled, Snyk ingests a short-lived, shallow clone of a Git reference and scans manifest files, lock files, and related configuration files in order to identify your open-source dependencies.
When CLI scans use the --unmanaged option, Snyk accesses your source code files to convert them to file signatures (hashes) and stores the file signatures and file names
Snyk accesses and stores the names and version numbers of your dependencies.
Snyk stores the names of associated licenses, including copyright and attribution information.
Snyk accesses and stores repository-specific information.
Snyk accesses and stores Git provider push and pull-specific information. Examples: contributor name, filenames, timestamps.

Optional Snyk Open Source add-ons (opt-in)
Your account is subject to contract terms which might restrict your ability to enable these features. By enabling these features, you agree on behalf of your company to changes to your contract terms to allow these features, and you will be responsible for the use of these features based on your own circumstances.

For the Go Modules full source code analysis feature, Snyk will access and store the contents of your Git repository to facilitate the building of an accurate dependency graph. After the Snyk analysis is complete, your code is deleted from the Snyk system.
For the improved .NET scanning feature, Snyk will access and store the contents of your Git repository to facilitate the building of an accurate dependency graph. After the Snyk analysis is complete, your code is deleted from the Snyk system.
For the Reachable Vulnerabilities feature, Snyk will access and store the contents of your Git repository to facilitate the building of a call graph. When the analysis completes, your code is deleted from the Snyk system. Only the call graph and function names are maintained.
